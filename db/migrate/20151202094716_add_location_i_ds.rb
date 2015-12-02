class AddLocationIDs < ActiveRecord::Migration
  def change
    add_column :tours, :start_location_id, :integer
    add_column :tours, :finish_location_id, :integer
  end
end
