#encoding: UTF-8
class Payment < ActiveRecord::Base

	belongs_to :concept
	belongs_to :user

	validates_presence_of :date, :user_id, :concept_id, :quantity

	def amount
		"$#{self.quantity}"
	end

end