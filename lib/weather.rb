module Weather

	# def weather
	# 	conditions = Random.rand(1..4)
	# 	return "stormy" if conditions == 4
	# 	"sunny"
	# end

	def stormy?
		[false, false, false, true].sample
	end

end