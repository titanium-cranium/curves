class CommentsController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :edit, :destroy]

# def index
#   @comments = Comment.all.order(created_at 'ASC')
# end
#
#
#   def new
#     @comment = Comment.new.tour_id
#   end
#
# end
