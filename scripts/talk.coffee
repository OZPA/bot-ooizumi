module.exports = (robot) ->

  robot.respond //i, (msg) ->
    meigen = msg.random [
      "どーも奥さん。知ってるでしょう？大泉洋でございます。おいパイ食わねぇか。"
      "お前ほんとに大学出たのか？"
      "どうもー、青空シンクタンクでーす"
      "クーパーズピディーに昇る朝陽です…… 百万円！クイズハンター ハンターチャンスワン！"
      "海パン買うまで島出ねぇ"
      "遠いねぇ"
      "腹を割って話そう"
      "僕は一生どうでしょうします"
      "そのジャージ　栗生んじゃねぇ？"
      "ミスター大泉ーーー！！"
      "おみまいするぞー！"
      "トローリー！オー！"
      "喧嘩太鼓"
      "ロビンソンもう帰ろうよ"
      "どうでしょう軍団襲来！"
      "ライトオフ！！！"
      "それ魅力！"
      "バレンチノ"
      "ウイ・アー・オール・メン"
      "案ずるな 受験生！"
      "有田焼きは燃やしますか？"
      "鳴いたらどうだ？すずむし"
      "僕のねぇ　子猫ちゃんたちが満足しないよ"
      "じゃぁ　なんでそんなに黄色いんだよ"
      "風と　寒さと　匂いと　危険を感じるんだよ　こっちは！"
      "待っててくださいミスター　あなたの犬は　ただ今6号線に乗りました"
      "雄三が５人おんでん　５加山雄三　でもあなたは洋さんでがしょ？"
      "よーし　わかった　あした俺ちょっと早く起きて　名古屋に行ってくる"
      "断崖に浮かぶ家々の夜景が、クワンカの町を彩る、糸ようじ"
      "ギアいじったっけ　ロー入っちゃって　もうウィリーさ"
      "抗議の電話が殺到しております　どうぞおかけまちがいのないように　深夜です　おかけ間違いのないように"
      "寝れないんだよ　バスでもう寝れないんだよオレたち"
      "ケビンコスナーじゃん エアーウルフだね トップガンみたい"
      "ツイン？バカ言うな　シングル？とんでもない　4人部屋で"
      "こんな朝っぱらからパンツ一丁でね　弾劾を受けてる時点でこらぁ藤村くん反省でしょ"
    ]
    msg.reply "#{meigen}"

  robot.hear /よく言ってくれた/i, (msg) ->
    msg.send msg.random ["お前ほんとに大学出たのか？"]

  robot.hear /夏野菜/i, (msg) ->
    msg.send msg.random ["どーも奥さん。知ってるでしょう？大泉洋でございます。おいパイ食わねぇか。"]

  robot.hear /馬鹿/i, (msg) ->
    msg.send msg.random ["藤村が馬鹿だ"]

  robot.hear /小林製薬/i, (msg) ->
    msg.send msg.random ["糸ようじ"]

  robot.hear /ジャージ/i, (msg) ->
    msg.send msg.random ["そのジャージ　栗生んじゃねぇ？"]

  robot.hear /トローリー/i, (msg) ->
    msg.send msg.random ["オー！"]

  robot.respond /大丈夫？/i, (msg) ->
    msg.send msg.random ["大丈夫じゃねぇよ！ なまら恐かったよ！"]

  robot.hear /(鈴虫|すずむし)/i, (msg) ->
    msg.send "鳴いたらどうだ？すずむし"

  robot.hear /(子猫|こねこ)/i, (msg) ->
    msg.send "僕のねぇ　子猫ちゃんたちが満足しないよ"
