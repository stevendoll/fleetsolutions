class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations, id: :uuid do |t|
      t.string :name
      t.text :address_1
      t.text :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.uuid :account_id
      t.boolean :attended
      t.float :development_cost

      t.timestamps
    end
  end
end
