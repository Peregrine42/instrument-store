Feature: showing where an instrument is
  In order to find orders
  As a warehouse team member
  I want to be shown the stock locations for a given instrument
  
  Scenario: show stock locations
    Given there is an instrument stocked in several locations
    When I visit the details page for an instrument
    Then I see the instrument's locations
    And I see the instrument's stock levels
  
  Scenario: show locations of stock in the same warehouse
    Given there are two instrument stocks at the same warehouse
    When I visit the details page for an instrument
    Then I see the shelf number for each instrument
    
