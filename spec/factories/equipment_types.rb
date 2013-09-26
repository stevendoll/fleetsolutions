# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :equipment_type do
    name "MyString"
    fuel_per_hour 1.5
    conversion_cost 1.5
    propane_factor 1.5
    display_order 1.5
  end
end
