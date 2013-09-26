class CreateEquipment < ActiveRecord::Migration
  def change
    drop_table :equipment
    create_table :equipment, id: :uuid do |t|
      t.string :name
      t.integer :quantity
      t.uuid :equipment_type_id
      t.float :fuel_per_hour
      t.float :hours_per_year
      t.float :conversion_cost
      t.float :percent_propane
      t.float :propane_factor
      t.uuid :account_id

      t.timestamps
    end
  end
end
