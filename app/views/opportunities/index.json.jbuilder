json.array!(@opportunities) do |opportunity|
  json.extract! opportunity, :name, :description, :opportunity_type, :phone, :email, :address_1, :address_2, :city, :state, :zip, :pays_for_fuel, :fueling_location, :propane_royalties, :propane_turnkey_royalties, :propane_price, :propane_cost, :propane_turnkey_cost, :gasoline_price, :annual_management_charge, :conversion_margin
  json.url opportunity_url(opportunity, format: :json)
end
