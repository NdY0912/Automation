Feature: Validate create mail Page
  Scenario: Signup on page
    When  enter firstname
    And enter lastname
    And enter username
    And enter password
    And enter confirm password
    And user click on next
    Then On Next page