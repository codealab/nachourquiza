#encoding: UTF-8
class Concept < ActiveRecord::Base
	has_many :payments
end