class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.integer :user_id
      t.integer :beer_id
      t.integer :container_type
      t.integer :container_id
      t.date :acquired
      t.date :consumed

      t.timestamps
    end
  end
end
