# Description:
# Brilliant
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   <brilliant> - Guinness
#
# Author:
#   jboley

brilliantPics = [
  "http://affordablehousinginstitute.org/blogs/us/wp-content/uploads/guinness_brilliant.jpg"
]

module.exports = (robot) ->
  robot.hear /(brilliant)/i, (msg) ->
    msg.send msg.random brilliantPics

