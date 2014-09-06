#encoding: UTF-8
class Delivery < ActiveRecord::Base
	belongs_to :unit
	belongs_to :user
	has_many :attachments, :dependent => :destroy
	accepts_nested_attributes_for :attachments, :allow_destroy => true #, :reject_if => lambda { |a| a[:content].blank? }
	validates_presence_of :unit_id, :user_id
end