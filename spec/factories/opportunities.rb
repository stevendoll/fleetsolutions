# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :opportunity do
    name "MyString"
    description "MyText"
    opportunity_type "MyString"
    phone "MyString"
    email "MyString"
    address_1 "MyText"
    address_2 "MyText"
    city "MyString"
    state "MyString"
    zip "MyString"
    pays_for_fuel "MyString"
    fueling_location "MyString"
    propane_royalties 1.5
    propane_turnkey_royalties 1.5
    propane_price 1.5
    propane_cost 1.5
    propane_turnkey_cost 1.5
    gasoline_price 1.5
    annual_management_charge 1.5
    conversion_margin 1.5
  end
end
