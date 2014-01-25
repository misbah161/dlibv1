Given /^I am a guest$/ do
end

When /^I fill the register form with valid data$/ do
	visit("/register")
	fill_in "reader_email", 			with: "reader@example.com"
	fill_in "reader_password", 			with: "pass"
	fill_in "reader_confirm_password",	with: "pass"
	click_button "Register"
end
