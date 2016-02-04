require 'pry' # Implement your object-oriented solution here!
class EvenFibonacci
	def initialize(num)
		@num = num
		@fibo = [1,2]
	end

	def fibo 
		while @fibo[-1] + @fibo[-2] <= @num
			@fibo << @fibo[-1] + @fibo[-2]
		end
		@fibo
	end

	def sum 
		fibo 
		final = 0
		@fibo.select {|x| x%2==0}.each {|y| final+= y}
		final
	end

end