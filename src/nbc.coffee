# Description:
# NBC's "The more you know"
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   <themoreyouknow> - Display "The More You Know"
#
# Author:
#   jboley

picList = [
  "https://classandtrashshow.files.wordpress.com/2014/04/original.gif"
]

module.exports = (robot) ->
  robot.hear /(themoreyouknow|The more you know|tmyk)/i, (msg) ->
    msg.send msg.random picList
