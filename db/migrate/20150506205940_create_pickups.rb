class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.datetime :date

      t.timestamps null: false
    end
  end
end
