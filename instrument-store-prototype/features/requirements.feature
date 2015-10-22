Feature: showing how much of an item we have in a particular location
  In order to ship orders
  As a warehouse team member
  I want to be shown the stock locations for a given instrument
  
  Scenario: show stock locations
    Given there is an instrument in the database that has a location
    When I visit the details page for an instrument
    Then I see the instrument's location