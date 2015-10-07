def add(x,y)
	x + y
end

def subtract(x,y)
	x - y
end

def sum(arr)
	arr.length > 0 ? arr.inject(:+) : 0
end

def multiply(arr)
	arr.inject(1){|first, second| first * second}
end

puts multiply([3, 3, 5])

def power(arr)
	arr[0]**arr[1]
end

def factorial(x)
	arr = *(1..x)
	x > 0 ? arr.inject(1){|first, second| first * second} : 0
end

p factorial(2)