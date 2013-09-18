# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    commenter "MyString"
    post_id ""
    email "MyString"
    published_on "2013-09-16"
    body "MyText"
  end
end
