Feature: As someone in need of a peer ally,
	I want to connect with a peer ally,
	So that I can get help.

Scenario: Connect with an ally
	Given I am on the home page
	When I follow "Connect with an Ally"
	Then I should be on the crisis info page
	When I click "option"
	Then I should be on the option page
	When I follow "Connect With An Available Ally"
	Then I should be on the email form page
