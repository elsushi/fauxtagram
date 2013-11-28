Feature: Tagging Photos

As a user
In order to find my photos
I want to add tags to my pictures


Scenario: Adding tags

Given I am logged in
And I am on the new photo form
When I fill in "Caption" with "Hello"
And I attach an image
And I fill in "Tag" with "My tag"
And I click "Add your photo"
Then I should see a picture
And I should see the tag