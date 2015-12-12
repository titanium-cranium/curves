require 'test_helper'

class CommentTest < ActiveSupport::TestCase
	

	test "Comment rating test" do
		user = FactoryGirl.create(:user)
    address = FactoryGirl.create(:address)
		tour = FactoryGirl.create(:tour, :start_location => address, :finish_location => address)
		comment = FactoryGirl.create(:comment)		
		expected = "five star"
		actual = comment.humanized_rating
		assert_equal expected, actual
    end


end


# FROM FIREHOSE
  # test "create" do
  #   user = FactoryGirl.create(:user)
  #   sign_in user
 
  #   assert_difference 'Place.count' do
  #     post :create, {:place => {
  #         :name => 'yolo',
  #         :description => 'omg',
  #         :latitude => 42.3631519,
  #         :longitude => -71.056098
  #       }
  #     }
  #   end
  #   assert_redirected_to places_path
 
  #   assert_equal 1, user.places.count
  # end