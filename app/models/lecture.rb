#encoding: UTF-8
class Lecture < ActiveRecord::Base

	# before_validation :assign_position, on: [ :create ]

	belongs_to :plan
	validates_presence_of :name, :position
	paginates_per 10

	private

	# def assign_position
	# 	unit = self.plan.unit
	# 	lectures = unit.lectures.count
	# 	self.position = lectures+1
	# end

end