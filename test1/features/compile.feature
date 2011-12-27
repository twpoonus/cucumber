@compile
Feature: Compilation test
  Scenario: Compile Test
    Given Build is OK
    Then enter "Steve Jobs" into the search text field
    And submit the search query
    Then I should see "Steve Jobs"

