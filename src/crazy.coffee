# Description:
# Crazy
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   <crazy> - Beaker
#
# Author:
#   jboley

crazyPics = [
  "https://p.gr-assets.com/540x540/fit/hostedimages/1380375279/729812.gif"
]

module.exports = (robot) ->
  robot.hear /(crazy)/i, (msg) ->
    msg.send msg.random crazyPics

