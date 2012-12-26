droneServer = require './ar-drone-rest'

port = process.env.PORT || 8080
droneServer .listen port
console.log "Listening on Port '#{port}'"