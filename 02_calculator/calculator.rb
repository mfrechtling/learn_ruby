#write your code here

def add(val_a, val_b)
	return val_a + val_b
end

def subtract(val_a, val_b)
	return val_a - val_b
end

def sum(array)
	return array.reduce(:+) || 0
end

def multiply(*args)
	return args.reduce(:*) || 0
end

def power(val_a, val_b)
	return (val_a ^ val_b)
end

def factorial(val) 
	return (1..val).reduce(:*) || 1
end

