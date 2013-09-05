json.array!(@vehicle_types) do |vehicle_type|
  json.extract! vehicle_type, :name, :year, :miles, :lifetime_miles, :mileage, :miles_per_year, :resale_value, :conversion_cost, :propane_factor, :display_order
  json.url vehicle_type_url(vehicle_type, format: :json)
end
