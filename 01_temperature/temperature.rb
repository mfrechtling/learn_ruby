#write your code here
def ftoc(temp)
	return ((temp - 32) * 0.5556).round(1)
end

def ctof(temp)
	return ((temp / 0.5556) + 32).round(1)
end
