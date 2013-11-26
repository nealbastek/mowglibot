# Description:
#   Story is the most important thing in your life
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot story - Receive a community story
#   hubot story bomb N - get N stories

module.exports = (robot) ->

  robot.respond /story, (msg) ->
    

    msg.http("http://openknowledgefoundation.tumblr.com/random")
      .get() (err, res, body) ->
        msg.send "Here's a good story." 


  robot.respond /story bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    msg.http("http://openknowledgefoundation.tumblr.com/random?count=" + count)
      .get() (err, res, body) ->
        msg.send "Here's a good story."



