#encoding: UTF-8
class Plan < ActiveRecord::Base
	belongs_to :lecture
	belongs_to :unit
end