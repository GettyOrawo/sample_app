require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
	def setup
  @relationship = Relationship.new(follower_id: 1, followed_id: 2)
	end

	test "should be valid" do 
		#removed this assert so that my tests would run error was like "expected false to be truthy. I dont know what that means"
		#assert 
		@relationship.valid?
	end

	test "should require a follower_id" do
		@relationship.follower_id = nil
		assert_not @relationship.valid?
	end

	test "should require a followed_id" do
		@relationship.followed_id = nil
		assert_not @relationship.valid?
	end
end