Feature: Login and add subject

  Scenario: As a registered user I am able to login and add subject in ULESSON
    Given I can access the ULESSON home page
    When I enter my login details
    And I click sign in
    And I click Subject
    And Enter subject details
    Then I have Name of Subject



