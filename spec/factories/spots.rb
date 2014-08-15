# encoding: UTF-8

FactoryGirl.define do
  factory :spot do
    student_id create(:user, :student)
    group { create(:group) }
  end
end