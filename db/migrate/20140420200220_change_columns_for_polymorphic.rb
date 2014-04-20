class ChangeColumnsForPolymorphic < ActiveRecord::Migration
  def change
    change_column(:boxes, :container_type, :string)
    change_column(:bottles, :container_type, :string)
  end
end
