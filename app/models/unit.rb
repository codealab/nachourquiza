#encoding: UTF-8
class Unit < ActiveRecord::Base
	has_many :plans
	has_many :lectures, through: :plans
	has_many :deliveries
end