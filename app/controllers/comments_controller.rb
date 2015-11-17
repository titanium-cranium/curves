class CommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@tour = Tour.find(params[:tour_id])  #this pulls the tour the comment belongs to from the url
		@tour.comments.create(comment_params.merge(:user => current_user))
		redirect_to tour_path(@tour)
	end


private

	def comment_params
		params.require(:comment).permit(:message, :rating)
	end


end
