#encoding: UTF-8
class Lecture < ActiveRecord::Base
	belongs_to :plan
end