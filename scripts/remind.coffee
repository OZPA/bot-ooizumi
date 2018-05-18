cronJob = require('cron').CronJob

module.exports = (robot) ->

  send = (channel, msg) ->
    robot.send {room: channel}, msg

  #　水やり

  waterForPlants = new cronJob('0 30 23 * * sat', () ->
    send '#2_リマインダー', "@here おぉい植物に水やったのかぁ〜"
    , null, false, "Asia/Tokyo"
  )

  waterForPlants.start()
