Feature: moving stock to different locations
  In order to move orders and dispatch orders
  As a warehouse team member
  I want to move and remove stock

Scenario: moving stock to another location
  Given there is an instrument stocked in several locations
  When I visit the move stock page
  And I fill out the move stock form
  And I click the move stock button
  Then the stock is moved to a new location
  And the overall stock level remains the same
