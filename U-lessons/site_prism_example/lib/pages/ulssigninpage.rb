class Pages::Ulssigninpage < SitePrism::Page

  set_url "https://account.bbc.com/signin"
 # set_url_matcher /account.bbc.com/

  element :username_field, "#email"
  element :password_field, "body.login:nth-child(2) div.container-fluid:nth-child(1) div.row div.col-xs-12.col-sm-5.col-md-4.login-sidebar div.login-container form:nth-child(2) div.form-group.form-group-default:nth-child(3) div.controls:nth-child(2) > input.form-control"
  element :sign_in_button, "body.login:nth-child(2) div.container-fluid:nth-child(1) div.row div.col-xs-12.col-sm-5.col-md-4.login-sidebar div.login-container form:nth-child(2) button.btn.btn-block.login-button:nth-child(5) > span.signin"
  element :chapter_button, :xpath, "//span[contains(text(),'Chapters')]"


def enter_login_details
  username_field.set 'aditi@vinsol.com'
  password_field.set '12345678'
end

  def enter_incorrect_password_details
    username_field.set 'aditi@vinsol.com'
    password_field.set '1234567890'
  end

  def enter_incorrect_email_details
    username_field.set 'aditi@vinsol.c'
    password_field.set '123456789'
  end

  def enter_empty_email_details
    username_field.set ' '
    password_field.set '123456789'
  end

  def enter_empty_password_details
    username_field.set 'aditi@vinsol.com'
    password_field.set ' '
  end
end
