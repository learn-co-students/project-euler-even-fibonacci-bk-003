# Implement your procedural solution here!
def even_fibonacci_sum(limit)
	arr = [1,2]
	arr1 = []
	while arr[-1] < limit
		arr.push(arr[-1] + arr[-2])
	end
	
	arr.pop

	arr.each do |num|
		if num % 2 == 0
			arr1.push(num)
		end
	end

	arr1.inject{|sum,x| sum + x }
end