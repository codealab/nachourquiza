# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :payment do
    user_id 1
    concept_id 1
    quantity 1
    clarification "MyText"
  end
end
