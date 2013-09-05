class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts, id: :uuid do |t|
      t.string :name
      t.text :address_1
      t.text :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.float :fuel_royalties
      t.float :turnkey_royalties
      t.float :fuel_price
      t.float :annual_management_charge
      t.float :conversion_margin

      t.timestamps
    end
  end
end
