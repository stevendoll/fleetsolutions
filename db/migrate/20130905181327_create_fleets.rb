class CreateFleets < ActiveRecord::Migration
  def change
    create_table :fleets, id: :uuid do |t|
      t.string :name
      t.integer :quantity
      t.uuid :vehicle_type_id
      t.float :miles
      t.float :lifetime_miles
      t.float :mileage
      t.float :miles_per_year
      t.float :maintenance_per_mile
      t.string :pays_for_fuel
      t.string :pays_for_maintenance
      t.float :percent_propane
      t.float :propane_factor
      t.float :resale_value
      t.float :conversion_cost
      t.uuid :opportunity_id

      t.timestamps
    end
  end
end
