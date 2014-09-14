# pincode - A ruby wrapper for the India Pincode API(http://pin-codes.in/)


## Installation
  gem install pincode

## Usage
  detail = Pincode.search <pincode>
  detail.status
  detail.post_office
  detail.district
  detail.state
  
   
## Run tests
  rake test
