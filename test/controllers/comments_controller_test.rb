require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
	test "create comment " do
		user = FactoryGirl.create(:user)
			sign_in user
		address = FactoryGirl.create(:address)	
		tour = FactoryGirl.create(:tour)
		assert_difference 'Comment.count' do
			post :create, :tour_id => tour.id, :comment => {
				:message => 'whatever',
				:rating => '1_star'
			}
		end
		assert_redirected_to tour_path(tour)
		assert_equal 1, tour.comments.count 
	end




end
