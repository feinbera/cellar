class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.string :name
      t.integer :container_type
      t.integer :container_id
      t.integer :flags

      t.timestamps
    end
  end
end
