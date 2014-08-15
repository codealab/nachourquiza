class Course < ActiveRecord::Base
	has_many :units
	has_many :lectures, through: :plans
	
end