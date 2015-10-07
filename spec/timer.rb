class Timer
	def seconds
		@input ? time_string : 0
	end
	def seconds=(sec)
		@seconds = sec
		@input = true
	end
	def time_string
		@input ? @time_string = calc_string(@seconds) : 0
	end

	private
	def calc_string(seconds)
		hour_time = seconds / 3600
		minutes_time = (seconds - (hour_time * 3600)) / 60
		seconds_time = (seconds - (hour_time * 3600) - minutes_time * 60)
		padder([hour_time, minutes_time, seconds_time])
	end

	def padder(time_array)
		time_array.map{|t| t < 10 ? '0' + t.to_s : t.to_s}.join(':')
	end
end

@timer = Timer.new
@timer.seconds = 0
puts @timer.time_string