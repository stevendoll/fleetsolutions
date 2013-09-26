json.array!(@equipment_types) do |equipment_type|
  json.extract! equipment_type, :name, :fuel_per_hour, :conversion_cost, :propane_factor, :display_order
  json.url equipment_type_url(equipment_type, format: :json)
end
