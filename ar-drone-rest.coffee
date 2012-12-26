express = require 'express'
Drone = require './drone'
drone = new Drone(0.5)
droneServer = express()

droneServer.configure ->
  droneServer.use(express.bodyParser())
  droneServer.use(droneServer.router)
  droneServer.use(express.errorHandler({ dumpExceptions: true, showStack: true}))

droneServer.get "/", (req,res) ->
  res.end 'hi drone'

handleCommand = (req,res) ->
  command = req.params.command
  params = req.query
  drone[command].call(undefined, params)
  res.end command

droneServer.get "/:command", handleCommand

module.exports = droneServer
