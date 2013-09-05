# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vehicle do
    name "MyString"
    quantity 1
    vehicle_type_id ""
    miles 1.5
    lifetime_miles 1.5
    mileage 1.5
    miles_per_year 1.5
    maintenance_per_mile 1.5
    pays_for_fuel "MyString"
    pays_for_maintenance "MyString"
    percent_propane 1.5
    account_id ""
  end
end
