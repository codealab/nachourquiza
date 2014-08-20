#encoding: UTF-8
class Payment < ActiveRecord::Base

	belongs_to :concept
	belongs_to :user

	validates_presence_of :user_id, :concept_id, :quantity

end