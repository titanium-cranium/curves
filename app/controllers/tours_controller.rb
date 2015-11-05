class ToursController < ApplicationController
	def index
		@tours = Tour.all.page(params[:page]).per(4)
	end

	def new
		@tour = Tour.new
	end

	def create
		Tour.create(tour_params)
		redirect_to root_path
	end

private

	def tour_params
		params.require(:tour).permit(:name, :description, :start_location, :finish_location, :state, :country, :difficulty, :surface, :distance)
	end


end
