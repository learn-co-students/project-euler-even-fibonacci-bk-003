# Implement your procedural solution here!
def even_fibonacci_sum(num)
	fibos(num).select {|num| num % 2 == 0 }.inject(&:+)
end

def fibos(num, arr=[1,2])
	if arr[-1] >= num
		arr.pop ; return arr
	end
	arr << (arr[-1] + arr[-2])
	fibos(num, arr)
end