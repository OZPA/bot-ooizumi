cronJob = require('cron').CronJob

module.exports = (robot) ->

  send = (channel, msg) ->
    robot.send {room: channel}, msg

  new cronJob('0 13 19 * * mon', () ->
    send '#z_bot_test', "test"
    , null, true, "Asia/Tokyo"
  ).start()

  // 燃やすごみ

  const burnableNotify = new cronJob('0 20 19 * * mon', () ->
    send '#2_リマインダー', "@here おぉい 明日は燃やすごみの日だって言ってんだ"
    , null, true, "Asia/Tokyo"
  ).start()
