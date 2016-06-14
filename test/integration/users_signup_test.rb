require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

	def setup
		ActionMailer::Base.deliveries.clear
	end
  
	test "valid signup information" do
		get signup_path
		assert_difference 'User.count', 1 do
			post_via_redirect users_path, user: { name: "Example User",
															email: "user@example.com",
															password: "password",
															password_confirmation: "password" }
	end

	test "valid signup information with account activation" do
		get signup_path
		assert_difference 'User.count', 1 do
		post users_path, user: { name: "Example User",
								email: "user@example.com",
								password: "password",
								password_confirmation: "password" }
end

	assert_template 'users/show'
	assert is_logged_in?
	end
end
end