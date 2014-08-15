class Plan < ActiveRecord::Base
	has_many :lectures
	has_many :units
end
