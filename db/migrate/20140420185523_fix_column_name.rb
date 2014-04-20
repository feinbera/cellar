class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :shelves, :cellar_id, :beer_cellar_id
  end
end
