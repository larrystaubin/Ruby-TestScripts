require 'rubygems'
require 'watir-webdriver'
require 'spreadsheet'

obrowser = Watir::Browser.new :firefox
#obrowser = Watir::Browser.new :ie
#obrowser = Watir::Browser.new :chrome


oWorkbook = Spreadsheet.open('C:\Users\Larry\RubymineProjects\Ruby Training Scripts\new_customer_data.xls')
oSheet = oWorkbook.worksheet('Sheet1')

  oSheet.each do |row|

    if row[0]!= "FirstName"

      v_firstname = row[0]
      v_lastname = row[1]
      v_email = row[2]
      v_password = row[3]
      v_verifypassword = row[4]
      v_homephone = row[5]
      v_cellphone = row[6]
      v_instructions = row[7]

        puts "First Name entered is #{v_firstname}"
        puts "Last Name entered is #{v_lastname}"
        puts "Email entered is #{v_email}"
        puts "Password entered is #{v_password}"
        puts "Verify Password entered is #{v_verifypassword}"
        puts "Home phone entered is #{v_homephone}"
        puts "Cell phone entered is #{v_cellphone}"
        puts "Instructions entered are #{v_instructions}"

      v_verifymessage = "Customer information added successfully"
      v_url = 'http://trainingrite.net/trguitransactions/register.aspx'

      obrowser.goto (v_url)

      puts "Open browser and go to Trainingrite.net"

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


    else

    end


  end