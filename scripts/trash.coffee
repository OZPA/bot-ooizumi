cron = require('cron').CronJob

module.exports = (robot) ->

  send = (channel, msg) ->
    robot.send {room: channel}, msg

  new cronJob('0 10 19 * * mon', () ->
    send '#z_bot_test', "test"
    , null, true, "Asia/Tokyo"
  ).start()
