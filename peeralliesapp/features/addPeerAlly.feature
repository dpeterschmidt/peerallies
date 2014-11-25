Feature: As a peer ally
	So that I can add myself to the list of allies
	I want to add myself to the project
 
Scenario: Add team member named Bob
  Given PENDING I am on the ally list page
  When PENDING I follow "new peer ally"
  Then PENDING I should be on the new peer ally page
  When PENDING I fill in "Name" with "Bob"
  And PENDING I fill in "Bio" with "Bob's favorite class is software engineering"
  And PENDING I click "Create Peer ally"
  Then PENDING I should be on the peer allies page
  	But PENDING I should see "Bob"
