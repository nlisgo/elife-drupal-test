@resources
Feature: Resources
  So that I can read an article while I am away from my computer
  As an website user
  I want to be able to able to print out resource material

  Scenario Outline: I should see a link to the Article PDF on the article page
    Given I am on "<url>"
    Then I should see the link "Article PDF"

    Examples:
      | url |
      | content/10.7554/eLife.00471 |
      | content/10.7554/eLife.03058 |
