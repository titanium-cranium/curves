class PhotosController < ApplicationController
  before_action :authenticate_user!

	def create
		@tour = Tour.find(params[:tour_id])  #this pulls the tour the photo belongs to from the url
		@tour.photos.create(photo_params)
      redirect_to tour_path(@tour)
	end


private

	def photo_params
		params.require(:photo).permit(:caption, :picture)
	end



end
