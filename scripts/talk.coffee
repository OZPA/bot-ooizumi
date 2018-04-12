module.exports = (robot) ->

  robot.hear /よく言ってくれた/i, (msg) ->
    msg.send msg.random ["お前ほんとに大学出たのか？"]

  robot.hear /夏野菜/i, (msg) ->
    msg.send msg.random ["どーも奥さん。知ってるでしょう？ 大泉洋でございます。おいパイ食わねぇか。"]