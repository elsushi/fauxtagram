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

Then(/^I should see a picture$/) do
  visit new_photo_path
    fill_in 'Caption', with: 'Hello'
    attach_file 'Image', Rails.root.join('features/support/capy.jpg')
    click_button 'Add your photo!'

    pic = page.find 'img.uploaded-pic'
    expect(pic['alt']).not_to eq 'Missing'
end