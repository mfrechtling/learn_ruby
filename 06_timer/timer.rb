class Timer
 	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def minutes
		minutes = (seconds / 60).round(0)
	end

	def hours
		hours = (minutes / 60).round(0)
	end

	def time_string
		time_string = (hours >= 10 ? hours.to_s : '0' + hours.to_s) + ':'
		min = minutes - (hours * 60)
		time_string += (min >= 10 ? min.to_s : '0' + min.to_s) + ':'
		sec = seconds - (minutes * 60)
		time_string += sec >= 10 ? sec.to_s : '0' + sec.to_s
	end
	
end
