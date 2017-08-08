class Timer
  #write your code here
	attr_reader :seconds
	
	def initialize
		@seconds = 0
	end
	
	def seconds=(time)
		@seconds = time
	end
	
	def time_string
		@hours = @seconds / 3600
		@seconds -= @hours * 3600
		@mins = @seconds / 60
		@seconds -= @mins * 60
		@time_string = ""
		
		def convert(time)
			if time > 10
				@time_string += "#{time}:"
			else
				@time_string += "0#{time}:"
			end
		end
		
		convert(@hours)
		convert(@mins)
		convert(@seconds)
		@time_string[0, @time_string.length - 1]
	end
end
