class ToursController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]

	def index
		@tours = Tour.all.order('created_at ASC').page(params[:page]).per(4)
	end

	def new
		@tour = Tour.new
	end

	def create
		current_user.tours.create(tour_params)
		redirect_to root_path
	end

	def show
		@tour = Tour.find(params[:id])
	end

	def edit
		@tour = Tour.find(params[:id])
	end

	def update
		@tour = Tour.find(params[:id])
		@tour.update_attributes(tour_params)
		redirect_to tour_path
	end


private

	def tour_params
		params.require(:tour).permit(:name, :description, :start_location, :finish_location, :state, :country, :difficulty, :surface, :distance)
	end


end
