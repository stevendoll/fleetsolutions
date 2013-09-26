class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts, id: :uuid do |t|
      t.string :name
      t.text :address_1
      t.text :address_2
      t.string :city
      t.string :state
      t.string :zip
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
