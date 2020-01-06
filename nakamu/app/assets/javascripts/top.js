"use strict";

$(function() {
  var effect_pos = 300; // 画面下からどの位置でフェードさせるか(px)
  var effect_move = 50; // どのぐらい要素を動かすか(px)
  var effect_time = 800; // エフェクトの時間(ms) 1秒なら1000

  // フェードする前のcssを定義
  $(".scroll-fade-flow").css({
    opacity: 0
  });
  $(".scroll-fade-flow")
    .children()
    .each(function() {
      $(this).css({
        opacity: 0,
        transform: "translateY(" + effect_move + "px)",
        transition: effect_time + "ms"
      });
    });

  // スクロールまたはロードするたびに実行
  $(window).on("scroll load", function() {
    var scroll_top = $(this).scrollTop(); //変数 thisのスクロール位置取り
    var scroll_btm = scroll_top + $(this).height(); //変数 thisの終わり取得
    effect_pos = scroll_btm - effect_pos;

    //エフェクトが発動したとき、子要素をずらしてフェードさせる
    $(".scroll-fade-flow").each(function() {
      var this_pos = $(this).offset().top;
      if (effect_pos > this_pos) {
        $(this).css({
          opacity: 1,
          transform: "translateY(0)"
        });
        $(this)
          .children()
          .each(function(i) {
            $(this)
              .delay(100 + i * 500)
              .queue(function() {
                $(this)
                  .css({
                    opacity: 1,
                    transform: "translateY(0)"
                  })
                  .dequeue();
              });
          });
      }
    });
  });
});
