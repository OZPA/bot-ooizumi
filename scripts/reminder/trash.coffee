CronJob = require('cron').CronJob

module.exports = (robot) ->

  cronjob = new CronJob(
    cronTime: '0 32 17 * * *'
    start: true
    timeZone: 'Asia/Tokyo'
    onTick: ->
    robot.send{room: '#z_bot_test'}, 'テスト'
  )