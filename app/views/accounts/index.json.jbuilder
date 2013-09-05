json.array!(@accounts) do |account|
  json.extract! account, :name, :address_1, :address_2, :city, :state, :zip, :fuel_royalties, :fuel_price, :annual_management_charge, :conversion_margin
  json.url account_url(account, format: :json)
end
