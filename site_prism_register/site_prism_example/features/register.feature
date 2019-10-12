Feature: Site Register

  Scenario: I am able to register to the site
    Given I can access the site home page
    Then Click on Register
    When I enter my details
    And I click Submit
    Then I have I have been registered
