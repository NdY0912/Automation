Feature:testing

  @success
  Scenario:Successfull signup

    When I enter firstname "Nishant" lastname "Yadav" phone "7248534110" email "ndy@gmail.com" password "password" confirmpassword "password" to the signup page
    And click the Signup Button
    Then Successfull should be mentioned in the result

  @unsuccess
  Scenario: Unsuccessfull signup with different password

    When I enter firstname "abc" lastname "def" phone "7248535100" email "bca@gmail.com" password "password" confirmpassword "confirmpass" to the signup page
    And click the Signup Button
    Then UnSuccessfull should be mentioned in the result