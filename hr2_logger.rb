require 'rubygems'
require 'watir-webdriver'
require 'logger'

path = File.dirname(__FILE__)

name_log = 'TEST_B06082014_Trainingrite_login'

file = File.open(path + '/logs/' + name_log + '_logfile.log', File::WRONLY | File::APPEND | File::CREAT)

$logger = Logger.new(file)
$logger.info("==> TEST: Trainingrite_login_test")


module WebsiteLogin

  def open_browser
    @website = 'http://www.trainingrite.net'
    @browser = Watir::Browser.new :firefox
    @browser.goto @website
    puts 'Browser opened and home page returned'
    logger.info("==> Browser opened and navigated to website")
  end

  def enter_username
    @browser.text_field(:name => 'txtphone').set '1112223333'
    puts 'Username entered'
  end

  def enter_password
    @browser.text_field(:name => 'txtpassword').set 'password'
    puts 'Password entered'
  end

  def click_submitbutton
    @browser.button(:value => 'Submit').click
    puts 'Submit button clicked'
  end

  def verify_success
    if @browser.text.include?('2223334456')
      puts 'Login is successful'
    else
      puts 'Error....'
    end
  end

  def close_browser
    @browser.close
    puts 'browser is closed'
  end

end
