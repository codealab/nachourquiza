#encoding: UTF-8
class Attachment < ActiveRecord::Base
	belongs_to :delivery
end
