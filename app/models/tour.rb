class Tour < ActiveRecord::Base
  has_many :photos
  has_many :comments
  belongs_to :user
  geocoded_by :start_location, :latitude => "latitude_start", :longitude => "longitude_start"
  after_validation :geocode

  validates :name, :presence => true, :length => {:minimum => 3 }
  validates :start_location, :presence => true, :length => {:minimum => 3 }
  validates :finish_location, :presence => true, :length => {:minimum => 3 }

  # No longer necessary
  # validates :state, :presence => true, :length => {:minimum => 3 }
  # validates :country, :presence => true, :length => {:minimum => 3 }
end
