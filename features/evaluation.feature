Feature: Evaluation Creation

Scenario: New Evaluation where professor and course are already in Database
  Given a Professor named John Smith
  And I have a course called ECE101
  When I create a new evaluation 
  Then it belongs to ECE101

Scenario: New Evaluation where professor and course are not in Database
  When I create a new evaluation
  And I specify a course and a professor
  And the course is not in the database
  And the professor is not in the database
  Then a new course object will be created using the provided information
  And a new professor object will be created using the provided information
  When I click "submit", the evaluation will be stored in the database
  
