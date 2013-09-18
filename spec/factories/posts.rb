# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    author_id ""
    published_on "2013-09-16"
    teaser "MyText"
    body "MyText"
  end
end
