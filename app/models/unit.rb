#encoding: UTF-8
class Unit < ActiveRecord::Base
	
	before_validation :assign_position, on: [ :create ]

	belongs_to :course
	has_many :plans
	has_many :lectures, through: :plans
	has_many :deliveries

	private

	def assign_position
		units = self.course.units.count
		self.position = units+1
	end

end