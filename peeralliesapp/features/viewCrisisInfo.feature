Feature: As someone needing crisis information,
         I want to read what to do in a crisis,
	 So that I know what to do.

Scenario: Read crisis information
	Given I am on the home page
	When I go to the crisis_info page
	Then I should be on the crisis_info page
