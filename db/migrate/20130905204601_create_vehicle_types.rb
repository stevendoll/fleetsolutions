class CreateVehicleTypes < ActiveRecord::Migration
  def up
    create_table :vehicle_types, id: :uuid do |t|
      t.string :name
      t.integer :year
      t.float :miles
      t.float :lifetime_miles
      t.float :mileage
      t.float :miles_per_year
      t.float :resale_value
      t.float :conversion_cost
      t.float :propane_factor
      t.float :display_order

      t.timestamps
    end
  end
  def down
    drop_table :vehicle_types
  end
end
