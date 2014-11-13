# Description:
# Thanks
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   <thanks hubot> - "My pleasure!"
#
# Author:
#   jboley

module.exports = (robot) ->
  robot.hear /(thank.*.bot|thank.*.duck)/i, (msg) ->
    msg.send "My pleasure!"