#encoding: UTF-8
class Attachment < ActiveRecord::Base
	attr_accessor :crop_x, :crop_y, :crop_w, :crop_h, :lecture

	mount_uploader :file, FileUploader 
	belongs_to :delivery
	belongs_to :lecture

end