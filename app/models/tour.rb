class Tour < ActiveRecord::Base
  belongs_to :user
  validates :name, :presence => true, :length => {:minimum => 3 }, :uniqueness => true
  validates :start_location, :presence => true, :length => {:minimum => 3 }
  validates :finish_location, :presence => true, :length => {:minimum => 3 }

  # No longer necessary
  # validates :state, :presence => true, :length => {:minimum => 3 }
  # validates :country, :presence => true, :length => {:minimum => 3 }
end
