require 'rubygems'
require 'watir-webdriver'

obrowser = Watir::Browser.new :firefox

obrowser.goto 'http://www.trainingrite.net'

obrowser.button(:xpath=> "//*[@id='al']/tbody/tr[2]/td/font/center[2]/table/tbody/tr[2]/td[1]/div/input").click

obrowser.text_field(:id=> "ctl00_MainContent_txtFirstName").set ('Larry')

obrowser.text_field(:id=> 'ctl00_MainContent_txtLastName').set ('Aubin')

obrowser.text_field(:name=> 'ctl00$MainContent$txtEmail').set ('larry.staubin@bca.xx')

obrowser.text_field(:name=> 'ctl00$MainContent$txtPassword').set ('password')

obrowser.text_field(:name=> 'ctl00$MainContent$txtVerifyPassword').set ('password')

obrowser.text_field(:id=> 'ctl00_MainContent_txtHomePhone').set ('2223334444')

obrowser.text_field(:id=> 'ctl00_MainContent_txtCellPhone').set ('2223334444')

obrowser.textarea(:name=> 'ctl00$MainContent$txtInstructions').set ('Call anytime after 5 pm')

obrowser.button(:value=> "Submit").click