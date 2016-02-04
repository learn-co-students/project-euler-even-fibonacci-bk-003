require 'pry'
# Implement your procedural solution here!
def even_fibonacci_sum(num)
	fibo = [1, 2]
	return 0 if num == 0
	return 0 if num == 1
	return 2 if num == 2
	sum = 2
	while fibo[-1]+fibo[-2] <= num do 
		fibo << (fibo[-1] + fibo[-2])
		sum += fibo[-1] if fibo[-1] % 2 == 0
	end
	sum
end
