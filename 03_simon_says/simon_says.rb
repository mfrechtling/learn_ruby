#write your code here

def echo(string)
	return string
end

def shout(string)
	return string.upcase()
end

def repeat(string, n = 2)
	return ([string] * n).join ' '
end

def start_of_word(string, n)
	return string[0..n - 1]
end

def first_word(string)
	return string.split(' ').first()
end

def titleize(string)
	result = ''
	words = string.split(' ')
	words.map! do |word|
		if (words.index(word) == 0 || (word != 'and' && word != 'over' && word != 'the'))
			result += word.capitalize + ' '
		else
			result += word + ' '
		end
	end
	return result.strip()
end

