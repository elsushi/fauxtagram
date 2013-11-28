Feature: Creating photos
  As a user 
  In order to share my photos
  I want be able to create photos

Scenario: Adding a photo with a caption
	Given I am logged in
  And I am on the new photo form
  When I fill in "Caption" with "My cool caption"
  And I attach an image
  And I click "Add your photo!"
  Then I should see "My cool caption"
  

  Scenario: Adding a photo without a caption
  Given I am logged in
  And I am on the new photo form
  When I fill in "Caption" with ""
  And I click "Add your photo!"
  Then I should see "error"

Scenario: Trying to add a photo when I'm not logged in
	Given I am not logged in
	When I visit the new photo form
	Then I should see "You need to sign in"
