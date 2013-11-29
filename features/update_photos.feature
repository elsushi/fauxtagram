Feature: Updating a photo

As a user that has uploaded pictures
In order to change the content of my photos
I want to be able to update and edit them

	Scenario: Editing a photo

	Given I am logged in
	And there is a photo with a caption containing "blah blah"
	And I am on the homepage
	And I follow "Edit photo"
	Then I should see "Edit your photo"

	Scenario: Destroying a photo

	Given I am logged in
	Given there is a photo with a caption containing "hello"
	And I am on the homepage
	And I follow "Destroy"
	Then I should not see "hello"



