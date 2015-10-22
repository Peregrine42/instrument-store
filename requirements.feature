Feature: showing where an instrument is
  In order to ship orders
  As a warehouse team member
  I want to be shown the stock locations for a given instrument
  
  Scenario: show stock locations
    Given there is an instrument that has several locations
    When I visit the details page for an instrument
    Then I see the instrument's locations
    And I see the instrument's stock levels