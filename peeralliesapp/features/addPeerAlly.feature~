Feature: As a peer ally
	So that I can add myself to the list of allies
	I want to add myself to the project
 
Scenario: Add team member named Bob
  Given I am on the ally list page
  When I follow "new peer ally"
  Then I should be on the new peer ally page
  When I fill in "Name" with "Bob"
  And I fill in "Bio" with "Bob's favorite class is software engineering"
  And I click "Create Peer ally"
  Then I should be on the peer allies page
  	But I should see "Bob"
