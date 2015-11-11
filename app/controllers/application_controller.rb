class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

# Removed for now, need to pull countries from start & finish locations
  # before_action :load_countries
  #
  #   def load_countries
  #     @countries = Tour.all.pluck(:country).uniq
  #   end

end
