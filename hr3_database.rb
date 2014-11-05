require 'rubygems'
require 'watir-webdriver'
require 'tiny_tds'

client = TinyTds::Client.new(:username => 'SQL2008_841902_tr_user', :password => '52645264hrm', :host => 'sql2k801.discountasp.net')

  result = client.execute("Select * from TRCustomers where custfname like 'Tester'")

 # puts "Total number of rows: #{result.count}"
  result.each do |datarow|

      $custid = datarow["cust_id"]
      $cust_fname = datarow["custfname"]
      $cust_lname = datarow["custlname"]
      $cust_hmphone = datarow["custhmphone"]
      $cust_password = datarow["custpassword"]

    puts "\r\n********************************"
    puts "First Name #{$cust_fname}"
    puts "Phone: #{$cust_hmphone}"
    puts "Password: #{$cust_custpassword}"

      browser = Watir::Browser.new :firefox
      browser.goto 'http://trainingrite.net'
      browser.text_field(:id=>"txtphone").set $cust_hmphone
      browser.text_field(:id=>"txtpassword").set $cust_password
      browser.button(:name=>"btnSubmit").click

      if browser.text.include? $cust_hmphone
        puts "Login successful with Customer Phone Number #{$cust_hmphone}"
      else
        puts "Tried unsuccessfully to login with Phone Number as : #{$cust_hmphone} and the password #{$cust_password}"
      end
    browser.close
  end