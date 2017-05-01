Feature: Search for an item
  Scenario: A successful Search
    Given I am on Amazon's home page
    When I submit a search for "charlie brown"
    Then I should see results for that query.