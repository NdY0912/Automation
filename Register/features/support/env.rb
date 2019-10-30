require 'selenium-webdriver'
require "test/unit"
Test::Unit::AutoRunner.need_auto_run = false
Selenium::WebDriver::Firefox::Service.driver_path="C:/Users/sparepcs/Documents/Webdriver/geckodriver.exe"

Before do
  $driver = Selenium::WebDriver.for :firefox
  $driver.get "https://www.phptravels.net/register"
end