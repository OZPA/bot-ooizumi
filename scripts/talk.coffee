module.exports = (robot) ->

  robot.hear /よく言ってくれた/i, (msg) ->
    msg.send msg.random ["お前ほんとに大学出たのか？"]

  robot.hear /夏野菜/i, (msg) ->
    msg.send msg.random ["どーも奥さん。知ってるでしょう？ 大泉洋でございます。おいパイ食わねぇか。"]

  robot.hear /馬鹿/i, (msg) ->
    msg.send msg.random ["藤村が馬鹿だ"]

  robot.hear /小林製薬/i, (msg) ->
    msg.send msg.random ["糸ようじ"]