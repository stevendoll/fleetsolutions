class CreateEquipmentTypes < ActiveRecord::Migration
  def change
    create_table :equipment_types, id: :uuid do |t|
      t.string :name
      t.float :fuel_per_hour
      t.float :conversion_cost
      t.float :propane_factor
      t.float :display_order

      t.timestamps
    end
  end
end
