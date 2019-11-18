Feature: Login
  @correct
  Scenario: As a registered user I am able to login
    Given I can access the ULESSON home page
    When I enter my login details
    And I click sign in
    Then I am on dashboard

  @incorrect_password
  Scenario: Login with wrong password
    Given I can access the ULESSON home page
    When I enter my password incorrect
    And I click sign in
    Then I should get an error message

  @incorrect_email_id
  Scenario: Login with wrong email_id
    Given I can access the ULESSON home page
    When I enter my email_id incorrect
    And I click sign in
    Then I should get an error message

  @empty_email_id
  Scenario: Login with empty email_id
    Given I can access the ULESSON home page
    When I enter my email_id empty
    And I click sign in
    Then I should get a required field error message

  @empty_password_field
  Scenario: Login with empty password
    Given I can access the ULESSON home page
    When I enter my password empty
    And I click sign in
    Then I should get a required field error message


