require 'plane'

describe Plane do

	let(:plane) { Plane.new }
	let(:airport) { Airport.new }

	it 'has a flying status when created' do
		expect(plane.status).to eq :flying
	end

	it 'has a landing status when landed' do
		plane.land!
		expect(plane.status).to eq :landed
	end

	it 'has a flying status when takes off' do
		plane.land!
		plane.take_off!
		expect(plane.status).to eq :flying
	end

	it 'cannot land if it\'s already landed' do	
		plane.land!
		expect(lambda {plane.land!}).to raise_error(RuntimeError)
	end
end