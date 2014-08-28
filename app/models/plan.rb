#encoding: UTF-8
class Plan < ActiveRecord::Base

	before_validation :assign_position, on: [ :create ]

	belongs_to :lecture
	belongs_to :unit

	private

	def assign_position
		lectures = self.unit.lectures.count
		self.position = lectures+1
	end

end