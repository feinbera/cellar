class CreateBeerCellars < ActiveRecord::Migration
  def change
    create_table :beer_cellars do |t|
      t.string :name
      t.integer :user_id
      t.integer :flags

      t.timestamps
    end
  end
end
