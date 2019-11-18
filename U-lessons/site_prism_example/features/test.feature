Feature: Login and add subject with wrong subjectname

  Scenario Outline: As a registered user I am able to login and add subject in ULESSON
    Given I can access  ULESSON home page
    When I enter  login details
    And I click signin
    And I click Subjectt
    And Enter <subjectname> and <codee>
    And click other details
    Then I will have error message
    Examples:
    |subjectname|codee|
    |S          |np   |
    |sc         |m    |



