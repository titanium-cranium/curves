class AddLocationsToTours < ActiveRecord::Migration
  def change
    add_column :tours, :start_location, :string
    add_column :tours, :finish_location, :string
  end
end
