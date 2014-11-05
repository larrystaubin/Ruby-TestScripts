require 'rubygems'
require 'watir-webdriver'


#obrowser = Watir::Browser.new :firefox
obrowser = Watir::Browser.new :phantomjs

obrowser.goto 'http://www.trainingrite.net'

puts "Open browser and go to Trainingrite.net"

obrowser.button(:value=> 'Sign Up').click

puts "Click the Sign Up button"

obrowser.text_field(:id=> "ctl00_MainContent_txtFirstName").set ('Larry')

puts "First Name is entered"

obrowser.text_field(:id=> 'ctl00_MainContent_txtLastName').set ('Aubin')

puts "Last Name is entered"

obrowser.text_field(:name=> 'ctl00$MainContent$txtEmail').set ('larry.staubin@bca.xx')

puts "Email address is entered"

obrowser.text_field(:name=> 'ctl00$MainContent$txtPassword').set ('password')

puts "Password is entered"

obrowser.text_field(:name=> 'ctl00$MainContent$txtVerifyPassword').set ('password')

puts "Verify Password is entered"

obrowser.text_field(:id=> 'ctl00_MainContent_txtHomePhone').set ('2223334444')

puts "Home Phone is entered"

obrowser.text_field(:id=> 'ctl00_MainContent_txtCellPhone').set ('2223334444')

puts "Cell Phone is entered"

obrowser.textarea(:name=> 'ctl00$MainContent$txtInstructions').set ('Call anytime after 5 pm')

puts "Instructions are entered"

obrowser.button(:value=> "Submit").click

puts "Submit button is clicked"