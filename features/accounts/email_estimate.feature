Feature: Send estimate to myself
  In order to see if they want to be a customer
  A user
  Should be able to see an estimate for their project

    Scenario: User gets estimate successfully
      Given I am not logged in
      When I request estimate with valid data
      Then I should see my estimate
