require_relative 'hr2_login_module'

class TC_LoginTest

  include WebsiteLogin

  def test_login

    open_browser
    enter_username
    enter_password
    click_submitbutton
    verify_success
    login_screenshot
    close_browser

  end

end

#t_login = TC_LoginTest.new
#t_login.test_login



