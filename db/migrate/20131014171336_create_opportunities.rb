class CreateOpportunities < ActiveRecord::Migration
  def change
    #drop_table :opportunities
    create_table :opportunities, id: :uuid do |t|
      t.string :name
      t.text :description
      t.string :opportunity_type
      t.string :phone
      t.string :email
      t.text :address_1
      t.text :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :pays_for_fuel
      t.string :fueling_location
      t.float :propane_royalties
      t.float :propane_turnkey_royalties
      t.float :propane_price
      t.float :propane_cost
      t.float :propane_turnkey_cost
      t.float :gasoline_price
      t.float :annual_management_charge
      t.float :conversion_margin

      t.timestamps
    end
  end
end
