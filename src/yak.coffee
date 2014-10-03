# Description:
# Shave that yak?
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   <shave that yak>
#
# Author:
#   jboley

picList = [
  "http://i.minus.com/ibaDjk7AeIcvxv.gif"
]

module.exports = (robot) ->
  robot.hear /(yak.*.shav)|(shav*.*yak)/i, (msg) ->
    msg.send msg.random picList
