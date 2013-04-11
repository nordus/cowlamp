# Command Line: cowlamp
# ==================

# If cowlamp is installed using `node install cowlamp -g` it
# will make `cowlamp` globally available from the command line

dgram     = require 'dgram'
sock      = dgram.createSocket 'udp4'
messages  = require './messages'

# ### cowlamp([options])
#
# options:
#
# - `message_type`  : number, default: 10
# - `ip`            : string, default: process.env.IP|localhost
# - `port`          : number, default: 2013
cowlamp = (options) ->
  msg = messages[options.message_type]
  
  sock.send msg, 0, msg.length, options.port, options.ip, (err, bytes) ->
    sock.close()


module.exports = cowlamp