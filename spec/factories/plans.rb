# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :plan do
    unit_id 1
    lecture_id 1
    order 1
    core false
  end
end
