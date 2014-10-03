# Description:
# Slash
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   <slash> - Display Slash
#
# Author:
#   jboley

slashPics = [
  "http://www.performing-musician.com/pm/feb09/images/Slash_01.jpg",
  "http://extras.mnginteractive.com/live/media/site210/2011/0128/20110128_064108_slash_photo_by_Paul_Brown_300.jpg",
  "http://images5.fanpop.com/image/photos/30800000/-Slash-heavy-metal-30885357-200-200.jpg",
  "http://www.laweekly.com/imager/guitar-icon-slash-talks-les-paul-thievery/b/big/2474566/6fbd/IMG_9353.JPG"
]

module.exports = (robot) ->
  robot.hear /(slash)/i, (msg) ->
    msg.send msg.random slashPics
