require 'rubygems'
require 'watir-webdriver'
require 'spreadsheet'

#define the excel spreadsheet
oWorkBook = Spreadsheet.open('C:\Users\Larry\RubymineProjects\Ruby Training Scripts\login_data.xls')
oSheet = oWorkBook.worksheet('login_data')

oSheet.each do |row|

    if row[0]!="username"
  v_username = row[0]
  v_password = row[1]

  puts "Username is #{v_username}"
  puts "Password is #{v_password}"

  browser = Watir::Browser.new :firefox
  browser.goto 'http://trainingrite.net'
  browser.text_field(:id=>"txtphone").set v_username
  browser.text_field(:id=>"txtpassword").set v_password
  browser.button(:name=>"btnSubmit").click

  if browser.text.include? v_username
    puts "Login successful with Customer Phone Number #{v_username}"
  else
    puts "Tried unsuccessfully to login with Phone Number as : #{v_username} and the password #{v_password}"
  end
      browser.close
end

end