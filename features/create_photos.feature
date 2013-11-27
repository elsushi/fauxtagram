Feature: Creating photos
  As a user 
  In order to share my photos
  I want be able to create photos

Scenario: Adding a photo with a caption
  Given I am on the new photo form
  When I fill in "Caption" with "My cool caption"
  And I click "Add your photo!"
  Then I should see "My cool caption"
  

  Scenario: Adding a photo without a caption
  Given I am on the new photo form
  When I fill in "Caption" with ""
  And I click "Add your photo!"
  Then I should see "error"

