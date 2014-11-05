require 'rubygems'
require 'watir-webdriver'


obrowser = Watir::Browser.new :firefox
#obrowser = Watir::Browser.new :ie
#obrowser = Watir::Browser.new :chrome

v_url = 'http://www.trainingrite.net'
v_firstname = 'Tester1'
v_lastname = 'One'
v_email = 'tester1@ddd.com'
v_password = 'password'
v_verifypassword = 'password'
v_homephone = '2223334444'
v_cellphone = '2223334444'
v_instructions = 'Testing Variables'
v_verifymessage = "Customer information added successfully"


obrowser.goto (v_url)
puts "Open browser and go to Trainingrite.net"


obrowser.button(:xpath=> "//*[@id='al']/tbody/tr[2]/td/font/center[2]/table/tbody/tr[2]/td[1]/div/input").click

puts "Click the Sign Up button"


obrowser.text_field(:id=> "ctl00_MainContent_txtFirstName").set (v_firstname)
puts "First Name is entered"

obrowser.text_field(:id=> 'ctl00_MainContent_txtLastName').set (v_lastname)
puts "Last Name is entered"

obrowser.text_field(:name=> 'ctl00$MainContent$txtEmail').set (v_email)
puts "Email address is entered"

obrowser.text_field(:name=> 'ctl00$MainContent$txtPassword').set (v_password)
puts "Password is entered"

obrowser.text_field(:name=> 'ctl00$MainContent$txtVerifyPassword').set (v_verifypassword)
puts "Verify Password is entered"

obrowser.text_field(:id=> 'ctl00_MainContent_txtHomePhone').set (v_homephone)
puts "Home Phone is entered"

obrowser.text_field(:id=> 'ctl00_MainContent_txtCellPhone').set (v_cellphone)
puts "Cell Phone is entered"

obrowser.textarea(:name=> 'ctl00$MainContent$txtInstructions').set (v_instructions)
puts "Instructions are entered"

obrowser.button(:value=> "Submit").click
puts "Submit button is clicked"

if obrowser.text.include?(v_verifymessage)

  puts "TEST PASSED"

else
  puts "TEST FAILED"

end

obrowser.close
put "Browser is closed"

