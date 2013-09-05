# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :station do
    name "MyString"
    address_1 "MyText"
    address_2 "MyText"
    city "MyString"
    state "MyString"
    zip "MyString"
    account_id ""
    attended false
    development_cost 1.5
  end
end
