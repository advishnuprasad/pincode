require 'test/unit'
require 'pincode'

class PincodeTest < Test::Unit::TestCase
  def test_response
    response = Pincode.search("560068")
    assert_equal "SUCCESS", response.status  
    assert_equal "Singasandra", response.post_office
    assert_equal "Bangalore Rural", response.district
    assert_equal "Karnataka", response.state
  end

  def test_exception
    assert_raise_with_message(Pincode::InvalidPincodeError, "Wrong PIN Code") do
      Pincode.search("56006")
    end
  end
end
