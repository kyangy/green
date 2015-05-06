class AddUserToPickups < ActiveRecord::Migration
  def change
  	add_reference :pickups, :user, index: true
  end
end
