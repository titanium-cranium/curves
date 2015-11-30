class Tour < ActiveRecord::Base
  has_many :photos
  has_many :comments
  belongs_to :user
  belongs_to :start_location, class_name: "Address"
  belongs_to :finish_location, class_name: "Address"
  after_validation :geocode

  validates :name, :presence => true, :length => {:minimum => 3 }
  validates :start_location, :presence => true, :length => {:minimum => 3 }
  validates :finish_location, :presence => true, :length => {:minimum => 3 }

  # No longer necessary
  # validates :state, :presence => true, :length => {:minimum => 3 }
  # validates :country, :presence => true, :length => {:minimum => 3 }
end
