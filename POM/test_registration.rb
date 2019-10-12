
require_relative 'registration.rb'
require 'selenium-webdriver'
require 'test/unit'

class RegistrationPageTest < Test::Unit::TestCase
  def test_registration_page

    browser = Selenium::WebDriver.for(:chrome)
    login_page = RegistrationPage.new(browser)
    login_page.open()
    login_page.contactInformation("nishant","yadav","7248534100","abee@gmail.com")
    login_page.mailingAddress("patelnagar","jhandewalan","delhi","Delhi","12345","INDIA")
    login_page.userInformation("nady","123456789","123456789")


  puts "kjsjdsk"
    sleep 50

  end
end






