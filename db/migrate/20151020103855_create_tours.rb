class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.text :description
      t.text :state
      t.text :country
      t.string :difficulty
      t.string :surface
      t.float :distance

      t.timestamps
    end
  end
end
