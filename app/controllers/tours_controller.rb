class ToursController < ApplicationController
	def index
		@tours = Tour.all.page(params[:page]).per(4)
	end

end
