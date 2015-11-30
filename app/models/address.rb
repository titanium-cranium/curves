class Address < ActiveRecord::Base
  has_one :tour

  geocoded_by :location, :latitude, :longitude
  after_validation :geocode

  validates :location, :presence => true, :length => {:minimum => 3 }

end
