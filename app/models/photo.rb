class Photo < ActiveRecord::Base
  belongs_to :tour

  mount_uploader :picture, PictureUploader
end
