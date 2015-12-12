require 'test_helper'

class CommentTest < ActiveSupport::TestCase
	

	test "Comment rating test" do
		user = FactoryGirl.create(:user)
		address = FactoryGirl.create(:address)
		tour = FactoryGirl.create(:tour)
		comment = FactoryGirl.create(:comment)		
		expected = "five star"
		actual = comment.humanized_rating
		assert_equal expected, actual
    end
end