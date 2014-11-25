Feature: As a peer ally,
	I want to have someone's contact information,
	So that I can respond appropriately

Scenario: Connect with an Ally with info
	Given I am on the home page
	When I follow "Connect With An Available Ally"
	Then I should be on the email form page
	And I fill in "name" with "Joshua Nance"
	And I fill in "email" with "jnance@pugetsound.edu"
	And I fill in "message" with "blah"
	When I click "Send email to allies"
	Then I should be on the conf yes page
	When I follow "Okay"
	Then I should be on the index page