class Unit < ActiveRecord::Base
	has_many :lectures
	has_many :deliveries
end