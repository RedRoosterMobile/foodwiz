Feature: User signup
  Make sure specific pages
  are only accessible by logged in in users

  Scenario: Customer signs up, logs in, signs out
    Given I am on the home page
    And I subscribe with my credentials
    Then I should be signed up
    When I go to login page
    And Fill in my credentials
    Then I should be logged in
    When I log out
    Then I should be logged out

  Scenario: as a customer I don't want to enter an invalid email
    Given I am on the home page
    And I go to signup page
    And I submit invalid data
    Then I should get an error message

  Scenario: Login fail
    Given I am on the home page
    When I go to login page
    And Fill in wrong credentials
    Then I should get a wrong credentials message
