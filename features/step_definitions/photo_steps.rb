Given(/^I am on the new photo form$/) do
  visit '/photos/new'
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, text|
	fill_in field, with: text
end

When(/^I click "(.*?)"$/) do |button|
	click_button button
end

Then(/^I should see "(.*?)"$/) do |text|
	expect(page).to have_content text
end

Given(/^there is a photo with a caption containing "(.*?)"$/) do |caption|
  Photo.create(caption: caption)
end

When(/^I am on the homepage$/) do
  visit "/photos"
  end