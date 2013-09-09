Feature: Sign up for demo
  In order to start the project
  A user
  Should be able to sign up for a demo

    Scenario: User signs up for demo
      Given I am not logged in
      When I request estimate with valid data
      Then I should see my estimate
      Then I click on TestDrive
      Then I enter my information
      Then I receive a thank you message
      Then I receive an email

    Scenario: User adds car information to demo
      Given I received an email
      Then I enter information on 2 vehicles
      Then I receive a thank you message


