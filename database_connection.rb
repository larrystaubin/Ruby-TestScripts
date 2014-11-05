require 'rubygems'
require 'watir-webdriver'
require 'tiny_tds'

client = TinyTds::Client.new(:username => 'SQL2008_841902_tr_user', :password => '52645264hrm', :host => 'sql2k801.discountasp.net')

  query = "Select * from TRCustomers where custfname like 'Irfan'"

  result = client.execute(query)

  puts "Total number of rows #{result.count}"

  result.each do |datarow|
    $custid = datarow["cust_id"]
    $cust_fname = datarow["custfname"]
    $cust_lname = datarow["custlname"]
    $cust_hmphone = datarow["custhmphone"]
    $cust_password = datarow["cust_password"]

    puts "\r\n********************************"
    puts "Customer ID is #{$custid}"
    puts "Customer First Name is #{$cust_fname}"
    puts "Customer Last Name is #{$cust_lname}"
    puts "Customer home phone is #{$cust_hmphone}"
    puts "Customer password #{$cust_password}"
  end