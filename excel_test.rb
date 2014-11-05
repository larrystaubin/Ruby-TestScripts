require 'rubygems'
require 'watir-webdriver'
require 'spreadsheet'


oXLWorkbook = Spreadsheet.open('login_test_data.xls')
oXLWorkSheet = oXLWorkbook.worksheet('Sheet1')

oXLWorkSheet.each  do |row|

    if row[0]!="Phone Number"
    username = row[0]
    password = row[1]

  puts "\r\n*****************************"
  puts "The username is #{username}"
  puts "The password is #{password}"

    @browser = Watir::Browser.new :firefox
    @browser.goto 'http://www.trainingrite.net'
    puts 'Browser opened and home page returned'

    @browser.text_field(:name => 'txtphone').set "#{username}"
    @browser.text_field(:name => 'txtpassword').set "#{password}"



    @browser.button(:value => 'Submit').click
    puts 'Submit button clicked'

    @browser.close
    puts 'browser is closed'

    else
    end

end



