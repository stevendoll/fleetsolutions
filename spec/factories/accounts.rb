# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :account do
    name "MyString"
    address_1 "MyText"
    address_2 "MyText"
    city "MyString"
    state "MyString"
    zip "MyString"
    fuel_royalties 1.5
    fuel_price 1.5
    annual_management_charge 1.5
    conversion_margin 1.5
  end
end
