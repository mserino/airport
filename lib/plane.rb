class Plane

def initialize
	@status = :flying
end

def status
	@status
end

def land!
	raise "This plane has already landed!" if self.status == :landed
	@status = :landed
	self
end

def take_off!
	@status = :flying
	self
end

end