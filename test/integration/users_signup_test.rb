require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  test "invalid signup information" do
	get signup_path
	assert_difference 'User.count', 1 do
	post_via_redirect users_path, user:
	 { name: "", 
	 	email: "user@invalid", 
	 	password: "foo", 
	 	password_confirmation: "bar" 
	 }
	end
assert_template 'users/new'
end
end
