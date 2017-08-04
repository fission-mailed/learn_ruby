#write your code here
def add num1, num2
	num1 + num2
end

def subtract num1, num2
	num1 - num2
end

def sum array
	array_sum = 0
	array.each do |number|
		array_sum += number
	end
	array_sum
end

def multiply(num1, num2, num3 = 1, num4 = 1, num5 = 1)
	num1 * num2 * num3 * num4 * num5
end

def power num1, num2
	num1 ** num2
end

def factorial num
	product = 1
	if num % 1 == 0
		if num == 0
			product = 1
		elsif num == 1
			product = 1
		elsif num < 0
			product = "Error, invalid input"
		else
			n = num
			while n > 1
				product *= n
				n -= 1
			end
		end
	else
		product = "Non-integer detected"
	end
	product
end