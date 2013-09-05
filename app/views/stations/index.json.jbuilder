json.array!(@stations) do |station|
  json.extract! station, :name, :address_1, :address_2, :city, :state, :zip, :account_id, :attended, :development_cost
  json.url station_url(station, format: :json)
end
