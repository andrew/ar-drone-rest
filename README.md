# AR Drone REST Server

A simple rest server to control your Parrot AR Drone

## Libraries

* webserver - express (https://github.com/visionmedia/express)
* drone client - node-ar-drone (https://github.com/felixge/node-ar-drone)

## Usage

1. git clone https://github.com/andrew/ar-drone-rest

2. cd ar-drone-rest

3. npm install

4. Connect to wifi on parrot ar drone

5. run `coffee test.coffee` in the root of the app

6. open `http://localhost:8080`

## API

/takeoff

/land

/stop

/move?front=0.5

/move?up&left

/increaseSpeed

/decreaseSpeed

## Copyright

Copyright (c) 2013 Andrew Nesbitt. See [LICENSE](https://github.com/andrew/ar-drone-rest/blob/master/LICENSE) for details.