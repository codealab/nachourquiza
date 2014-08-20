#encoding: UTF-8
class Photo < ActiveRecord::Base
	belongs_to :delivery
end