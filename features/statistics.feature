
Feature: Statistical Display
Scenario Outline:  Professor Rating statistics 
  Given I have evaluations for a professor
  When I click on "Display Professor Statistics", I should see statistics pertaining to only that professor

Scenario Outline:  Departmental Rating statistics 
  Given I have evaluations for courses in a department
  When I click on "Display Departmental Statistics", I should see statistics pertaining to only that department

Scenario Outline:  Course Rating statistics 
  Given I have evaluations for a course
  When I click on "Display Course Statistics", I should see statistics pertaining to only that course
