When(/^I enter firstname "([^"]*)" lastname "([^"]*)" phone "([^"]*)" email "([^"]*)" password "([^"]*)" confirmpassword "([^"]*)" to the signup page$/) do |arg1, arg2, arg3, arg4, arg5, arg6|
  $driver.find_element(:name, "firstname").send_keys(arg1)
  $driver.find_element(:name, "lastname").send_keys(arg2)
  $driver.find_element(:name, "phone").send_keys(arg3)
  $driver.find_element(:name, "email").send_keys(arg4)
  $driver.find_element(:name, "password").send_keys(arg5)
  $driver.find_element(:name, "confirmpassword").send_keys(arg6)
end

And(/^click the Signup Button$/) do
  $driver.find_element(:xpath, "//button[@class='signupbtn btn_full btn btn-success btn-block btn-lg']").click()
end

Then(/^Successfull should be mentioned in the result$/) do
  puts "Successfull"
end

Then(/^UnSuccessfull should be mentioned in the result$/) do
  puts "UnSuccessfull"
end