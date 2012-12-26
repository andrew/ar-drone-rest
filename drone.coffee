arDrone = require("ar-drone")

class Drone
  constructor: (speed) ->
    @speed = speed
    @accel = 0.01
    @control = arDrone.createUdpControl()
    @ref = {}
    @pcmd = {}
    @rate = 30
    setInterval (=>
      @control.ref @ref
      @control.pcmd @pcmd
      @control.flush()
    ), @rate

  takeoff: =>
    @ref.emergency = false
    @ref.fly = true

  land: =>
    @ref.fly = false
    @pcmd = {}

  stop: =>
    @pcmd = {}

  move: (directions) =>
    @pcmd = {}
    for direction, speed of directions
      s = speed || @speed
      @pcmd[direction] = parseFloat(s)

  increaseSpeed: =>
    @speed += @accel

  decreaseSpeed: =>
    @speed -= @accel

module.exports = Drone