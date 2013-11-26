	Feature: Viewing photos

Scenario: Viewing photos with captions
	Given there is a photo with a caption containing "blah blah"
	And there is a photo with a caption containing "meep meep"
	When I am on the homepage
	Then I should see "blah blah"
	And I should see "meep meep"