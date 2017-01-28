#write your code here

def translate(string)
	string_array = string.split(' ')
	if (string_array.length > 1)
		result = []
		string_array.each do |element|
			result.push(translate(element))
		end
		return result.join ' '
	end
	if ((/[aeiou]/ =~ string[0]) != nil)
		return string + "ay"
	end
	result = ''
	suffix = ''
	letters = string.split('')
	letters.map! do |letter|
		if ((/[aeiou]/ =~ letter) != nil)
			if (suffix[suffix.length - 1] == 'q' && letter == 'u')
				suffix += letter
			else
				return string[letters.index(letter)..string.length - 1] + suffix + 'ay'
			end
		else 
			suffix += letter
		end
	end
end
