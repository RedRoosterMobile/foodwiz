Feature: User signup
  Make sure specific pages
  are only accessible by logged in in users

  Scenario: Customer wants to sign up
    Given I am on the home page
    And I subscribe with my credentials
    Then I should be logged in

  Scenario: anonymous Customer wants to see login page
    Given I am on the home page
    And I wanna see some posts
    Then I should be on login page