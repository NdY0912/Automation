require 'page-object'

class RegistrationPage
  include PageObject

  text_field(:firstname, :name => 'firstName')
  text_field(:lastname, :name => 'lastName')
  text_field(:phone, :name => 'phone')
  text_field(:email, :name => 'userName')
  text_field(:address1, :name => 'address1')
  text_field(:address2, :name => 'address2')
  text_field(:city, :name => 'city')
  text_field(:state, :name => 'state')
  text_field(:postalcode, :name => 'postalCode')
  row(:country, :id => 'country')
  text_field(:username, :name => 'email')
  text_field(:password, :name => 'password')
  text_field(:confirmpassword, :name => 'confirmPassword')
  button(:register, :name => 'register')

  def open
    @browser.get 'http://newtours.demoaut.com/mercuryregister.php'
  end
  def contactInformation(fname,lname,phone,email)
    self.firstname = fname
    self.lastname = lname
    self.phone = phone
    self.email = email
  end





  def mailingAddress(addressfirst,addresssecond,city,state,postal,country)
    self.address1 = addressfirst
    self.address2 = addresssecond
    self.city = city
    self.state = state
    self.postalcode = postal
   # self.send_keys.country = country
  end

  def userInformation(username,password,confirmpassword)
    self.username = username
    self.password = password
    self.confirmpassword = confirmpassword
    register
  end

  end