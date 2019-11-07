When(/^I enter firstname "([^"]*)" lastname "([^"]*)" phone "([^"]*)" email "([^"]*)" password "([^"]*)" confirmpassword "([^"]*)" to the signup page$/) do |arg1, arg2, arg3, arg4, arg5, arg6|
  $driver.find_element(:name, "firstname").send_keys(arg1)
  $driver.find_element(:name, "lastname").send_keys(arg2)
  $driver.find_element(:name, "phone").send_keys(arg3)
  $driver.find_element(:name, "email").send_keys(arg4)
  $driver.find_element(:name, "password").send_keys(arg5)
  $driver.find_element(:name, "confirmpassword").send_keys(arg6)
  sleep 10
end

And(/^click the Signup Button$/) do
  $driver.find_element(:xpath, "//button[@class='signupbtn btn_full btn btn-success btn-block btn-lg']").click()
  sleep 10
end

Then(/^Successfull should be mentioned in the result$/) do

  wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
  begin
    element = wait.until { $driver.find_element(:xpath => "//h3[@class='text-align-left']") }
    expect(element.text).to eq('Hi, Nishant Yadav')
    sleep 5
  ensure
    sleep 5
    $driver.quit
  end
  puts "Successfull"
end

Then(/^Password not matching with confirm password$/) do

  wait = Selenium::WebDriver::Wait.new(:timeout => 5) # seconds
  begin
    element = wait.until { $driver.find_element(:xpath => "//p[contains(text(),'Password not matching with confirm password.')]") }
    expect(element.text).to eq('Password not matching with confirm password.')
    sleep 5
  ensure
    sleep 5
    $driver.quit
  end
  puts "UnSuccessfull"
end