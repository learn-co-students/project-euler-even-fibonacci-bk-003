# Implement your object-oriented solution here!
class EvenFibonacci
	attr_accessor :fibos

	def initialize(num)
		@fibos = get_fibos(num)
	end

	def get_fibos(num, arr=[1,2])
		if arr[-1] >= num
			arr.pop ; return arr
		end
		arr << (arr[-1] + arr[-2])
		get_fibos(num, arr)
	end

	def sum
		fibos.select {|num| num % 2 == 0 }.inject(&:+)
	end

end