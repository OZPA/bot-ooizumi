module.exports = (robot) ->

  robot.respond /(?:ちくわ|チクワ|竹輪|(?:chi|ti)kuwa|tiqav?)\s*([^\s]+)/i, (msg) ->
    msg.send 'http://' + msg.match[1] + '.tiqav.com/'
