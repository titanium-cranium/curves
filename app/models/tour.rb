class Tour < ActiveRecord::Base
  belongs_to :user
  validates :name, :presence => true
  validates :start_location, :presence => true
  validates :finish_location, :presence => true
  validates :state, :presence => true
  validates :country, :presence => true
end
