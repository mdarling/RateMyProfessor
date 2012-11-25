
Feature: User Sign Up

Scenario Outline:  Student Registers for an account
  When I click on "Sign Up", I should see an interface asking for a UNM email and password
  When the username is already in use, I should be prompted to re-enter #this shouldn't be the case, as all UNM emails 										adresses are presumably unique.
  When I don't enter a valid UNM email address, I should be prompted to re-enter
  When I click "Submit" I should be told that I will be sent an email to confirm account
  When I recieve the email, it should have a link to a page confirming my registration

Scenario Outline:  Professor account registration
#Only an administrator should be able to create a new professor account

  Given I am logged in as an administrator
  When I click on "Create New Professor", I should be given a form to enter the professor's information
  When I click "submit" I should get a confirmation that the prfoessor's account was created 

Scenario Outline:  Administrator account registration 
  When I click on "Create New Administrator", I should be given a form to enter the administrator's information
  When I click "submit" I should get a confirmation that the administrator's account was created 
