# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vehicle_type do
    name "MyString"
    year 1
    miles 1.5
    lifetime_miles 1.5
    mileage 1.5
    miles_per_year 1.5
    resale_value 1.5
    conversion_cost 1.5
    propane_factor 1.5
    display_order 1.5
  end
end
