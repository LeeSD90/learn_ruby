def add(num1, num2)
	return num1 + num2
end

def subtract(num1, num2)
	return num1 - num2
end

def sum(array)
	sum = 0

	for num in array
		sum += num
	end

	return sum
end

def multiply(*nums)
	total = 1
	for num in nums
		total = num * total
	end
	return total
end

def power(base, power)
	return base ** power
end

def factorial(num)
	return 1 if num == 0
	return num * factorial(num - 1)
end
