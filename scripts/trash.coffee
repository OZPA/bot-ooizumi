cronJob = require('cron').CronJob

module.exports = (robot) ->

  send = (channel, msg) ->
    robot.send {room: channel}, msg

  # 燃やすごみ

  burnableNotify = new cronJob('0 30 23 * * tue,fri', () ->
    send '#2_リマインダー', "@here おぉい明日は燃やすごみの日だっつってんだぁ。"
    , null, false, "Asia/Tokyo"
  )

  # 燃やさないごみ

  weekNumber = Math.floor((new Date().getDate() - 1) / 7) + 1
  unburnableWeek = weekNumber % 2
  unburnableNotify = new cronJob('0 30 23 1-21 * wed', () ->
    send '#2_リマインダー', "@here おぉい明日は燃やさないごみの日だっつってんだぁ。第3週だったら水銀含めたごみもだせるんだぁ〜。"
    , null, false, "Asia/Tokyo"
  )

  # 資源ごみ

  recyclableNotify = new cronJob('0 30 23 * * mon', () ->
    send '#2_リマインダー', "@here おぉい明日は資源ごみの日だっつってんだぁ。プラスチックと、ペットボトルと、びん、缶をまとめとけよぉ〜。"
    , null, false, "Asia/Tokyo"
  )

  # 古紙

  paperNotify = new cronJob('0 30 23 * * sun', () ->
    send '#2_リマインダー', "@here おぉい明日は古紙回収の日だっつってんだぁ。"
    , null, false, "Asia/Tokyo"
  )

  burnableNotify.start()
  if unburnableWeek isnt 0
    unburnableNotify.start()
  recyclableNotify.start()
  paperNotify.start()
