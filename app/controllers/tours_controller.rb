class ToursController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create, :edit, :destroy]

	def index
		@tours = Tour.all.order('created_at ASC').page(params[:page]).per(8)
	end

# needs to be updated to pull country from start & finish locations
	def filter
		@tours = Tour.all.order('created_at ASC').where(country: params[:country]).page(params[:page]).per(4)
		render :index
	end

	def new
		@tour = Tour.new
	end

	def create
		@tour = current_user.tours.create(tour_params)
			if @tour.valid?
				redirect_to root_path
			else
				render :new, :status => :unprocessable_entity
			end
	end

	def show
		@tour = Tour.find(params[:id])
		@comment = Comment.new
		@photo = Photo.new
	end

	def edit
		@tour = Tour.find(params[:id])
		if @tour.user != current_user
			return render :text => 'Editing tour details restricted to the creator.', :status => :forbidden
		end
	end

	def update
		@tour = Tour.find(params[:id])
			if @tour.user != current_user
				return render :text => 'Editing tour details restricted to the creator.', :status => :forbidden
			end
		@tour.update_attributes(tour_params)
			if @tour.valid?
				redirect_to root_path
			else
				render :edit, :status => :unprocessable_entity
			end
	end

	def destroy
		@tour = Tour.find(params[:id])
		  if @tour.user != current_user
				return render :text => 'Editing tour details restricted to the creator.', :status => :forbidden
			end
		@tour.destroy
		redirect_to root_path
	end


private

	def tour_params
		params.require(:tour).permit(:name, :description, :start_location, :finish_location, :state, :country, :difficulty, :surface, :distance)
	end


end
