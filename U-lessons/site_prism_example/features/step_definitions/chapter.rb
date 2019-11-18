Given(/^Can access the ULESSON home page$/) do
  @Ulswebsite = Ulswebsite.new
  @Ulswebsite.uls_home_page.load
  @Ulswebsite.uls_home_page.displayed?
end

When(/^Enter my login details$/) do
  @Ulswebsite.uls_sign_in_page.enter_login_details

end

And(/^Click on sign in$/) do
  @Ulswebsite.uls_sign_in_page.sign_in_button.click
  sleep 10
end

And(/^click on chapter$/) do
@Ulswebsite.uls_sign_in_page.chapter_button.click
  sleep 10
end

And(/^click on add chapter$/) do
  @Ulswebsite.uls_chapter_create.chapter.click
end

And(/^Enter chapter details$/) do
  @Ulswebsite.uls_chapter_create.chapter_details
  sleep 5

end

Then(/^I have chapter Name on Page$/) do
  expect(page).to have_selector('body.voyager.chapters:nth-child(2) div.app-container.expanded.no-animation:nth-child(2) div.row.content-container div.container-fluid:nth-child(5) div.side-body.padding-top div.page-content.read.container-fluid:nth-child(1) div.top-white-form-area div.non-editable-form-view div.form-group:nth-child(2) > div.form-control.static-value.disabled:nth-child(2)')
end