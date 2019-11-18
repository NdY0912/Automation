Given(/^I can access  ULESSON home page$/) do
  @Ulswebsite = Ulswebsite.new
  @Ulswebsite.uls_home_page.load
  @Ulswebsite.uls_home_page.displayed?
end

When(/^I enter  login details$/) do
  @Ulswebsite.uls_sign_in_page.enter_login_details
end

And(/^I click signin$/) do
  @Ulswebsite.uls_sign_in_page.sign_in_button.click
  sleep 10
end

And(/^I click Subjectt$/) do
  @Ulswebsite.uls_subject_create.subject.click

end

And(/^Enter (.*) and (.*)$/) do |subjectname, codee|

  @Ulswebsite.uls_subject_create.sub_name.set "#{subjectname}"
  @Ulswebsite.uls_subject_create.code.set "#{codee}"

end

And(/^click other details$/) do
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

Then(/^I will have error message$/) do
  expect(page).to have_selector('body.voyager.subjects:nth-child(2) div.app-container.expanded.no-animation:nth-child(2) div.row.content-container div.container-fluid:nth-child(5) div.side-body.padding-top div.page-content.container-fluid:nth-child(3) form.form-edit-add div.row:nth-child(2) div.col-md-8 div.panel.panel-bordered div.alert.alert-dismissable.alert-danger ul:nth-child(1) > li:nth-child(1)')

end