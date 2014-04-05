Feature: User signup
  Make sure specific pages
  are only accessible by logged in in users

  Scenario: Customer wants to sign up
    Given I am on the home page
    And I subscribe with my credentials
    Then I should be logged in

  Scenario: as a customer I don't want to enter an invalid email
    Given I am on the home page
    And I go to signup page
    And I submit invalid data
    Then I should get an error message