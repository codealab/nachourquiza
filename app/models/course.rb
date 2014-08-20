#encoding: UTF-8
class Course < ActiveRecord::Base

	has_many :spots
	has_many :students, :through => :spots

	has_many :units
	has_many :lectures, through: :units
	validates_presence_of :name

end