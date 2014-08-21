# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attachment do
    delivery_id 1
    type ""
    file "MyString"
    title "MyString"
    description "MyText"
  end
end
