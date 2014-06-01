Airport Challenge
==================
Third week challenge for [Makers Academy](http://www.makersacademy.com)

Ruby code to control the flow of planes in an airport.
The planes can take off and land in the airport, but only if there isn't any storm brewing.
The planes cannot land if the airport is full.

### Classes
- Airport
- Plane

### Modules
- Weather

## How to use it
First you have to require the files for the airport, the planes and the weather
> require './lib/airport'
> require './lib/plane'
> require './lib/weather'

Then create the airport
> airport_name = Airport.new
and one or more planes
> plane_name = Plane.new

The plane's status when created is `flying`
You can land it into the airport:
> airport_name.landing(plane_name)

And the plane can take off from the airport:
> airport_name.taking_off(plane_name)

## Technologies
- Ruby
- Rspec

