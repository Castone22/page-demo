require 'cucumber'
require 'watir'
require 'page-object'
require 'rspec'

World PageObject::PageFactory

CURRENT_ENV = :st
BASE_URL = {:st => 'http://www.amazon.com'}
