class Book
	def title
		@title
	end

	def title=(title)
		@title = titleize(title)
	end

	def titleize(string)
		ignored = ['and', 'over', 'the', 'in', 'of', 'a', 'an']
	        result = ''
        	words = string.split(' ')
        	words.map! do |word|
                	if (words.index(word) == 0 || (ignored.include? word) == false)
                        	result += word.capitalize + ' '
                	else
                        	result += word + ' '
                	end
        	end
        	return result.strip()
	end


end
