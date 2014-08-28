#encoding: UTF-8
class Lecture < ActiveRecord::Base

	belongs_to :plan
	validates_presence_of :name
	paginates_per 10

end