require_relative 'weather'

class Airport

	include Weather

	DEFAULT_CAPACITY = 5

	def planes
		@planes ||= []
	end

	def landing(plane)
		raise "The airport is full!" if self.full?
		raise "The plane can\'t land in the middle of a storm!" if stormy?
		plane.land!
		planes << plane
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

end