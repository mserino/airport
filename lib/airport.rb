require_relative 'weather'

class Airport

	include Weather

	DEFAULT_CAPACITY = 5

	def planes
		@planes ||= []
	end

	def landing(plane)
		raise "The airport is full!" if full?
		raise "The plane can\'t land in the middle of a storm!" if stormy?
		planes << plane
		plane.land!
	end

	def taking_off(plane)
		raise "The plane can\'t take off in the middle of a storm!" if stormy?
		plane.take_off!
		planes.delete(plane)
	end
	
	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def full?
		planes.count >= capacity
	end

	def empty?
		planes.count == 0
	end

	def all_taking_off
		until empty? do
			planes.each {|plane| taking_off(plane)}
		end
		self
	end

	# def all_land
	# 	until planes.count == DEFAULT_CAPACITY do
	# 		planes.each {|plane| landing(plane)}
	# 	end
	# 	self
	# end

end