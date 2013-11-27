Given(/^I am logged in$/) do
  step %Q{Email "someone@banana.co.uk" is already registered with password "blahblah"}
	step %Q{I am on the homepage}
	step %Q{I follow "Login"}
	step %Q{I fill in "Email" with "someone@banana.co.uk"}
	step %Q{I fill in "Password" with "blahblah"}
	step %Q{I click "Sign in"}
	step %Q{I should see "Signed in successfully."}
end

Given(/^Email "(.*?)" is already registered with password "(.*?)"$/) do |email, password|
  User.create(email: email, password: password, password_confirmation: password)
end

Given(/^I follow "(.*?)"$/) do |link|
	click_link link
end

Given(/^I am not logged in$/) do
 #We are logged out by default
end

When(/^I visit the new photo form$/) do
	step %Q{I am on the new photo form}
end

