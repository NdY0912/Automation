class Pages::Register < SitePrism::Page

  set_url "http://newtours.demoaut.com/mercuryregister.php"
  set_url_matcher /mercuryregister.php/

  element :first_name, "table:nth-child(2) tbody:nth-child(1) tr:nth-child(2) td:nth-child(2) > input:nth-child(1)"
  element :last_name, "table:nth-child(2) tbody:nth-child(1) tr:nth-child(3) td:nth-child(2) > input:nth-child(1)"
  element :phone, "table:nth-child(2) tbody:nth-child(1) tr:nth-child(4) td:nth-child(2) > input:nth-child(1)"
  element :email, "#userName"
  element :address1,  "table:nth-child(2) tbody:nth-child(1) tr:nth-child(7) td:nth-child(2) > input:nth-child(1)"
  element :address2, "table:nth-child(2) tbody:nth-child(1) tr:nth-child(8) td:nth-child(2) > input:nth-child(1)"
  element :city, "table:nth-child(2) tbody:nth-child(1) tr:nth-child(9) td:nth-child(2) > input:nth-child(1)"
  element :state, "table:nth-child(2) tbody:nth-child(1) tr:nth-child(10) td:nth-child(2) > input:nth-child(1)"
  element :postal_code, "table:nth-child(2) tbody:nth-child(1) tr:nth-child(11) td:nth-child(2) > input:nth-child(1)"
  element :dropdown, "table:nth-child(2) tbody:nth-child(1) tr:nth-child(12) td:nth-child(2) > select:nth-child(1)"

  element :user_name, "#email"
  element :password, "table:nth-child(2) tbody:nth-child(1) tr:nth-child(15) td:nth-child(2) > input:nth-child(1)"
  element :confirm_password, "table:nth-child(2) tbody:nth-child(1) tr:nth-child(16) td:nth-child(2) > input:nth-child(1)"
  element :submit, "table:nth-child(2) tbody:nth-child(1) tr:nth-child(18) td:nth-child(1) > input:nth-child(1)"


  def enter_login_details
    first_name.set 'Nishant'
    last_name.set 'Yadav'
    phone.set '7248534100'
    email.set 'abc@gmail.com'
    address1.set 'Jhandewalan'
    address2.set 'Delhi'
    city.set 'Delhi'
    state.set 'Haryana'
    postal_code.set '123401'
    dropdown.select 'INDIA'
    user_name.set 'qwerty123'
    password.set '12345678'
    confirm_password.set '12345678'


  end



end
