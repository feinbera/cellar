class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :postal
      t.string :country

      t.timestamps
    end
  end
end
