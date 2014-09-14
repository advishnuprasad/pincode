# -*- encoding: utf-8 -*-
require File.expand_path("../lib/pincode/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'pincode'
  s.version     = Version::VERSION
  s.date        = '2014-09-14'
  s.summary     = "Pincode API"
  s.description = "Gem to get details from pincode"
  s.authors     = ["A D Vishnu Prasad"]
  s.email       = 'advishnuprasad@gmail.com'  
  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
  s.homepage    = 'https://github.com/advishnuprasad/pincode'
  s.license     = 'MIT'

  s.add_runtime_dependency 'httparty', '~> 0'
end