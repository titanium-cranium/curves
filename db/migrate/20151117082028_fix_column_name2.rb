class FixColumnName2 < ActiveRecord::Migration
  def change
    rename_column :comments, :place_id, :tour_id
  end

end
