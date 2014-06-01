require 'airport'
require 'plane'
require './lib/weather'

describe Airport do

	include Weather

	def fill(plane)
		5.times {airport.landing(Plane.new)}
	end

	let(:airport) { Airport.new }
	let(:plane) { Plane.new }

	context 'Taking off and landing' do
		before(:each) do
      allow(airport).to receive(:stormy?) { false }
    end

		it 'planes can land in the airport' do
			airport.landing(plane)
			expect(airport.planes.count).to eq (1)
		end

		it 'a plane can take off from the airport' do
			airport.landing(plane)
			airport.taking_off(plane)
			expect(airport.planes.count).to eq(0)
		end
	end

	context 'Traffic control' do
		before(:each) do
      allow(airport).to receive(:stormy?) { false }
    end
		
		it 'should know when is full' do
			fill airport
			expect(airport).to be_full
		end

		it 'a plane cannot land if the airport is full' do
			airport.landing(plane)
			expect{airport.landing(plane)}.to raise_error(RuntimeError)
		end
	end

	context 'Check for weather conditions' do
		before(:each) do
      allow(airport).to receive(:stormy?) { true }
    end

		it 'airport knows then the weather is stormy' do
			expect(airport.stormy?).to be_true
		end

		it 'a plane cannot take off when there is a storm brewing' do
			plane.take_off!
			expect{airport.taking_off(plane)}.to raise_error(RuntimeError)
		end

		it 'a plane cannot land when there is a storm brewing' do
			plane.land!
			expect{airport.landing(plane)}.to raise_error(RuntimeError)
		end

	end

end