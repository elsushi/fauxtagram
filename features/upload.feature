Feature: Upload pictures
As a user
In order to share my pictures
I need to upload them first

Scenario: Uploading photos

Given I am logged in
And I am on the new photo form
When I fill in "Caption" with "Hello"
And I attach an image
And I click "Add your photo"
Then I should see "Hello"
And I should see a picture