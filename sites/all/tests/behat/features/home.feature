@home
Feature: Homepage
  In order to verify success at installing the web site
  As an anonymous user
  I want to go to the home page without errors

  Scenario: View the homepage
    When I am on the homepage
    Then the response status code should be 200
    And I should see "eLife Drupal Profile"

  @api
  Scenario Outline: View the homepage while logged in
    Given I am logged in as a user with the "<role>" role
    When I am on the homepage
    Then the response status code should be 200
    Then I should see "eLife Drupal Profile"
    And I should see "Log out"

    Examples:
      | role |
      | administrator |
      | editor |
