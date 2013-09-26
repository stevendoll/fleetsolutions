# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :equipment do
    name "MyString"
    quantity 1
    equipment_type_id ""
    fuel_per_hour 1.5
    hours_per_year 1.5
    conversion_cost 1.5
    percent_propane 1.5
    propane_factor 1.5
    account_id ""
  end
end
