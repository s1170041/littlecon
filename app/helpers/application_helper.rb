module ApplicationHelper
	def simple_time(time)
		youbi = %w[日 月 火 水 木 金 土]
		time.strftime("%Y/%m/%d (#{youbi[time.wday]}) %H:%M:%S")
	end
end
