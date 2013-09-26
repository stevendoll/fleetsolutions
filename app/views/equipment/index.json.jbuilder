json.array!(@equipment) do |equipment|
  json.extract! equipment, :name, :quantity, :equipment_type_id, :fuel_per_hour, :hours_per_year, :conversion_cost, :percent_propane, :propane_factor, :account_id
  json.url equipment_url(equipment, format: :json)
end
