class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.float :abv
      t.integer :ibu
      t.integer :type
      t.date :released
      t.integer :best_after
      t.integer :best_before
      t.integer :brewery_id
      t.integer :style_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
