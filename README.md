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
First you have to require the files for the airport and the planes

`require './lib/airport'`

`require './lib/plane'`

Then create the airport

`airport_name = Airport.new`

and one or more planes

`plane_name = Plane.new`

The plane's status when created is `flying`
You can land it into the airport:

`airport_name.landing(plane_name)`

And the plane can take off from the airport:

`airport_name.taking_off(plane_name)`

Grand finale: all planes can take off from the airport:
After creating five planes (this is the default capacity), and after having them landed in the airport, you can release them all:

`airport_name.all_taking_off`

If you want to change the airport's capacity, after creating the airport, just type:

`airport_name.capacity = 8`

## Technologies
- Ruby
- Rspec

