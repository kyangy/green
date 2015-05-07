class AddInfoToPickup < ActiveRecord::Migration
  def change
  	add_column :pickups, :info, :string
  end
end
