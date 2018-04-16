module.exports = (robot) ->

# ゴミ関係

  robot.respond /(ごみ|ゴミ)の日/i, (msg) ->
    msg.reply "おぉい覚えとけって言ったろぉ〜？ `http://www.city.meguro.tokyo.jp/kurashi/shizen/gomi/youbiichiran.files/megurohonntyou46.pdf`"

  robot.respond /(ごみ|ゴミ)の分別/i, (msg) ->
    msg.reply "おぉい覚えとけって言ったろぉ〜？ `http://www.city.meguro.tokyo.jp/smph/kurashi/shizen/gomi/katei_gomi/gomihinmokuichiran.html`"
