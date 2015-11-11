class AddLatitudeAndLongitudeToTours < ActiveRecord::Migration
  def change
    add_column :tours, :latitude_start, :float
    add_column :tours, :longitude_start, :float
    add_column :tours, :latitude_finish, :float
    add_column :tours, :longitude_finish, :float
  end
end
