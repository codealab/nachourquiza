#encoding: UTF-8
class Spot < ActiveRecord::Base

	belongs_to :course
	belongs_to :student, :class_name => 'User'

	validates_uniqueness_of :student_id, :scope => :course_id
	validates_presence_of :student_id, :course_id

end