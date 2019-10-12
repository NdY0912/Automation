require 'selenium-webdriver'
Before do
  $driver = Selenium::WebDriver.for :chrome
  $driver.get "https://accounts.google.com/signup"
end