class AddUpcToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :upc, :integer
  end
end
