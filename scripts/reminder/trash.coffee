cron = require('cron').CronJob

module.exports = (robot) ->
  new cron '0 0 18 * * mon', () =>
    robot.send {room: "#z_bot_test"}, "朝会だお"
  , null, true, "Asia/Tokyo"