require 'rubygems'
require 'watir-webdriver'
require 'logger'


path = File.dirname(__FILE__)

name_log = 'TEST_B06082015_Trainingrite_login'

file = File.open(path + '/logs/' + name_log + '_logfile.log', File::WRONLY | File::APPEND | File::CREAT)

$logger = Logger.new(file)
$logger.info('==> TEST: Trainingrite_login_test')


module WebsiteLogin


  def open_browser
    @website = 'http://www.trainingrite.net'
    @browser = Watir::Browser.new :firefox
    @browser.goto @website
    puts 'Browser opened and home page returned'
    $logger.info("==> Browser opened and navigated to website")
  end

  def enter_username
    @browser.text_field(:name => 'txtphone').set '1234567890'
    puts 'Username entered'
    $logger.info('Username entered')
  end

  def enter_password
    @browser.text_field(:name => 'txtpassword').set 'password'
    puts 'Password entered'
    $logger.info('Password entered')
  end

  def click_submitbutton
    @browser.button(:value => 'Submit').click
    puts 'Submit button clicked'
    $logger.info('Submit Button clicked')
  end

  def verify_success
    if @browser.text.include?('1234567890')
      puts 'Login is successful'
    else
      puts 'Error....'
    end
    $logger.info("verify success")
  end

    def login_screenshot
      @browser.driver.save_screenshot('login_screenshot.jpg')
    end


  def close_browser
    @browser.close
    puts 'browser is closed'
    $logger.info('Close browser')
  end

end



