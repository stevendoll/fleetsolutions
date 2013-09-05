json.array!(@fleets) do |fleet|
  json.extract! fleet, :name, :quantity, :vehicle_type_id, :miles, :lifetime_miles, :mileage, :miles_per_year, :maintenance_per_mile, :pays_for_fuel, :pays_for_maintenance, :percent_propane, :account_id
  json.url fleet_url(fleet, format: :json)
end
