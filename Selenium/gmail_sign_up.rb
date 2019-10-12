When(/^enter firstname$/) do
  $driver.find_element(:name,"firstName").send_keys("INDIA")
end

And(/^enter lastname$/) do
  $driver.find_element(:name,"lastName").send_keys("Dope")
end

And(/^enter username$/) do
  $driver.find_element(:name, "Username").send_keys("dopeindia123")
end

And(/^enter password$/) do
  $driver.find_element(:name,"Passwd").send_keys("India@123#456")
end

And(/^enter confirm password$/) do
  $driver.find_element(:name, "ConfirmPasswd").send_keys("India@123#456")
end

And(/^user click on next$/) do
  $driver.find_element(:xpath, "//span[@class='RveJvd snByac']").click()
end

Then(/^On Next page$/) do
  puts "NEXT PAGE"
  sleep 60
end