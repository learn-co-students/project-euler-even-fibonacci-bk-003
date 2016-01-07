# Implement your object-oriented solution here!
class EvenFibonacci
	def initialize(limit)
		@limit = limit
		@arr = [1,2]
		@arr_even = []
	end

	def fibonacci
		while @arr[-1] < @limit
		@arr.push(@arr[-1] + @arr[-2])
		end
		@arr.pop
	end

	def even_fib
		fibonacci
		@arr.each do |num|
			if num % 2 == 0
				@arr_even.push(num)
			end
		end
		@arr_even
	end

	def sum
		even_fib
		@arr_even.inject{|sum,x| sum + x }
	end
end