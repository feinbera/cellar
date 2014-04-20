class AddAddressToBreweries < ActiveRecord::Migration
  def change
    add_column :breweries, :address, :string
  end
end
