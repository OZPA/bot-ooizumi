cronJob = require('cron').CronJob

module.exports = (robot) ->

  cronjob = new cronJob(
    cronTime: '0 5 17 * * *'
    start: true
    timeZone: 'Asia/Tokyo'
    onTick: ->
    robot.send{room: '#z_bot_test'}, 'テスト'
  )

