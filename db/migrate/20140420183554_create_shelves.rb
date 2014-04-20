class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.string :name
      t.integer :cellar_id
      t.integer :flags

      t.timestamps
    end
  end
end
