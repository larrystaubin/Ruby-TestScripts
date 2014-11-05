require 'rubygems'
require 'watir-webdriver'

obrowser = Watir::Browser.new :firefox

obrowser.goto 'http://www.trainingrite.net'

obrowser.text_field(:id=> 'txtphone').set '2223334444'
obrowser.text_field(:id=> 'txtpassword').set 'password'
obrowser.button(:value=> 'Submit').click

