cronJob = require('cron').CronJob

module.exports = (robot) ->

  send = (channel, msg) ->
    robot.send {room: channel}, msg

  new cronJob('0 13 19 * * mon', () ->
    send '#z_bot_test', "test"
    , null, true, "Asia/Tokyo"
  ).start()

  # 燃やすごみ

  burnableNotify = new cronJob('0 40 19 * * mon', () ->
    send '#z_bot_test', "@here おぉい明日は燃やすごみの日だって言ってんだぁ"
    , null, false, "Asia/Tokyo"
  )

  burnableNotify.start()