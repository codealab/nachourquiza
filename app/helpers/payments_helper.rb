module PaymentsHelper

	def total_calculate(payments)
		total = 0
		payments.each { |p| total += p.quantity }
		"$#{total}"
	end

end