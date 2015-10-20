class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.text :description
      t.string :difficulty
      t.string :type
      t.float :distance
      
      t.timestamps
    end
  end
end
