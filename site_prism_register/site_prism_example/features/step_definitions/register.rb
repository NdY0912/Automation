Given(/^I can access the site home page$/) do
  @Site = Website.new
  @Site.Home_page.load
  @Site.Home_page.displayed?
end

Then(/^Click on Register$/) do
  @Site.Home_page.has_sign_in_link?
  @Site.Home_page.click_sign_in_link
end

When(/^I enter my details$/) do

  @Site.Register_page.enter_login_details

end

And(/^I click Submit$/) do
  @Site.Register_page.submit.click
end

Then(/^I have I have been registered$/) do
  expect(page).to have_selector('table:nth-child(1) tbody:nth-child(1) tr:nth-child(1) td.mouseOut:nth-child(1) > a:nth-child(1)', text: "SIGN-OFF")

end