Given(/^I can access the ULESSON home page$/) do
  @Ulswebsite = Ulswebsite.new
  @Ulswebsite.uls_home_page.load
  @Ulswebsite.uls_home_page.displayed?
end



When(/^I enter my login details$/) do
  #@Ulswebsite.bbc_sign_in_page.wait_for_username_field
  @Ulswebsite.uls_sign_in_page.enter_login_details
end

And(/^I click sign in$/) do
  @Ulswebsite.uls_sign_in_page.sign_in_button.click
  sleep 10
end
And(/^I click Subject$/) do
  @Ulswebsite.uls_subject_create.subject.click

end

And(/^Enter subject details$/) do
  @Ulswebsite.uls_subject_create.subject_details
  sleep 5
   @Ulswebsite.uls_subject_create.language.click
  @Ulswebsite.uls_subject_create.lang.click
  sleep 5
  @Ulswebsite.uls_subject_create.grade.click
  @Ulswebsite.uls_subject_create.grade12.click
  sleep 5
  @Ulswebsite.uls_subject_create.theme.click
  @Ulswebsite.uls_subject_create.math.click
  sleep 5
  @Ulswebsite.uls_subject_create.save.click


  sleep 10
end

Then(/^I have Name of Subject$/) do

  expect(page).to have_selector('body.voyager.subjects:nth-child(2) div.app-container.expanded.no-animation:nth-child(2) div.row.content-container div.container-fluid:nth-child(5) div.side-body.padding-top div.page-content.read.container-fluid:nth-child(1) div.top-white-form-area div.d-flex.align-items-center.justify-content-between div:nth-child(1) div.page-title-with-thumb > div.page-title-text:nth-child(2)')

end


Then(/^I am on dashboard$/) do

  expect(page).to have_selector('body.voyager:nth-child(2) div.app-container.expanded.no-animation:nth-child(2) div.row.content-container nav.navbar.navbar-default.navbar-fixed-top.navbar-top:nth-child(1) div.container-fluid ul.nav.navbar-nav.navbar-right li.dropdown.profile a.dropdown-toggle.text-right > img.profile-img')
end

When(/^I enter my password incorrect$/) do
  @Ulswebsite.uls_sign_in_page.enter_incorrect_password_details
end

Then(/^I should get an error message$/) do
  expect(page).to have_selector('body.login:nth-child(2) div.container-fluid:nth-child(1) div.row div.col-xs-12.col-sm-5.col-md-4.login-sidebar div.login-container div.alert.alert-red:nth-child(4) ul.list-unstyled > li:nth-child(1)')
end

When(/^I enter my email_id incorrect$/) do
  @Ulswebsite.uls_sign_in_page.enter_incorrect_email_details
end

When(/^I enter my email_id empty$/) do
  @Ulswebsite.uls_sign_in_page.enter_empty_email_details
end

Then(/^I should get a required field error message$/) do
  expect(page).to have_selector('body.login:nth-child(2) div.container-fluid:nth-child(1) div.row div.col-xs-12.col-sm-5.col-md-4.login-sidebar div.login-container div.alert.alert-red:nth-child(4) ul.list-unstyled > li:nth-child(1)')
end

When(/^I enter my password empty$/) do
  @Ulswebsite.uls_sign_in_page.enter_empty_password_details
end