# encoding: UTF-8
FactoryGirl.define do
  factory :payment do
    user_id 1
    concept_id 1
    quantity 100
    clarification "Lorem ipsum dolor sit amet, consectetur adipisicing elit."
  end
end