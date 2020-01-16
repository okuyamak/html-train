"use strict";

$(function() {
  var shuffled_true;
  var quizArea = $(".quiz_area");
  var quiz_html = quizArea.html();
  var quiz_cnt = 0;
  var quiz_fin_cnt = 3;
  var quiz_success_cnt = 0;
  var x, y;
  var choice = ["イ", "ロ", "ハ", "ニ"];
  var pnt_sprit = ["q10", "q20", "q30", "q40", "q50", "ave", "all", "re"];
  var years = [
    "H23",
    "H24",
    "H25",
    "H26",
    "H27",
    "H28",
    "H29",
    "H30",
    "H31",
    "R01"
  ];
  var pnt = new Array(years.length);
  for (y = 0; y < years.length; y++) {
    pnt[years[y]] = new Array(pnt_sprit.length);
    for (x = 0; x < pnt_sprit.length; x++) {
      pnt[years[y]][pnt_sprit[x]] = 0;
    }
  }
  var pastNormal = new Array(years.length);
  for (let y = 0; y < years.length; y++) {
    pastNormal[years[y]] = new Array(50).fill(0);
  }
  var pastType = new Array(years.length);
  for (let y = 0; y < years.length; y++) {
    pastType[years[y]] = new Array(50).fill(0);
  }

  var H30 = [];
  H30.push(
    { ans: "イ", type: 1, form: 1 },
    { ans: "イ", type: 1, form: 1 },
    { ans: "イ", type: 1, form: 1 },
    { ans: "イ", type: 1, form: 1 }
  );
  var ans_record = [];
  var ans_import = 0;
  quizReset();
  //クイズの表示
  function quizShow() {
    console.log(gon.year);
    console.log(gon.no);
    quizArea.find("#quiz_record").hide();
    quizArea.find(".quiz_no").text(quiz_cnt + 1);
    var que_src = $(".quiz_question")
      .children("img")
      .attr("src")
      .replace("000", quiz_cnt + 1);
    $(".quiz_question")
      .children("img")
      .attr("src", que_src);
    quizArea.find(".quiz_ans_area ul").empty();
    var success = H30[quiz_cnt]["ans"];
    var form = H30[quiz_cnt]["form"];
    for (let i = 1; i < 5; i++) {
      var fuga = "<li>" + ' <img src="/year-1-ANo-000.jpg"/>' + "</li>";
      if (choice[i - 1] == success) {
        fuga =
          "<li  id = true_no >" + '<img src="/year-1-ANo-000.jpg"/>' + "</li>";
      }
      var ans_src = $(fuga)
        .children("img")
        .attr("src")
        .replace("No", gon.no + quiz_cnt)
        .replace("000", i)
        .replace("year", gon.year);
      quizArea.find(".quiz_ans_area ul").append(fuga);
      $(".quiz_ans_area ul li:last")
        .children("img")
        .attr("src", ans_src);
    }
    //シャッフル
    quizShuffle();
    //イロハニ
    quizIroha();
    // 選択肢の形状を選択
    switch (form) {
      case "1":
        quizArea.find(".quiz_ans_area ul li").addClass("form_one");
        break;
      case "2":
        quizArea.find(".quiz_ans_area ul li").addClass("form_two");
        break;
      case "4":
        quizArea.find(".quiz_ans_area ul li").addClass("form_four");
        break;
      default:
        quizArea.find(".quiz_ans_area ul li").addClass("form_one");
        break;
    }
  }

  //回答を選択した後の処理
  quizArea.on("click", ".ready", function() {
    //画面を暗くするボックスを表示
    quizArea.find(".quiz_area_bg").show();
    quizArea.find("#quiz_next").show();
    quizArea.find(".quiz_decide").hide();
    if ($(".selected").is("[id=true_no]")) {
      //正解の処理 〇を表示
      quizArea.find(".quiz_title").addClass("true ans_icon");
      quizArea.find(".quiz_title").text("正解");
      quiz_success_cnt++;
      ans_record.push(1);
    } else {
      //不正解の処理
      quizArea.find(".quiz_title").addClass("false ans_icon");
      quizArea.find(".quiz_title").text("不正解 答え:　" + shuffled_true);
      ans_record.push(0);
    }
    quizArea.find(".quiz_ans_area #true_no").attr("id", "true_indicate");
  });

  quizArea.on("click", "#quiz_next", function() {
    //表示を元に戻す
    quizArea.find(".quiz_ans_area ul li").removeClass("selected");
    quizArea.find(".quiz_title").removeClass("true false ans_icon");
    quizArea.find(".quiz_title").html('第<span class="quiz_no"></span>問');
    quizArea.find(".quiz_area_bg").hide();
    quizArea.find("#quiz_next").hide();
    quizArea.find(".quiz_decide").show();
    quizArea.find(".quiz_decide").removeClass("ready");
    $(".quiz_question")
      .children("img")
      .attr("src", "/year-1-000.jpg");
    //問題のカウントを進める
    quiz_cnt++;
    if (quiz_fin_cnt > quiz_cnt) {
      //次の問題を設定する
      quizShow();
    } else {
      quizResult();
    }
  });

  //リスタートボタン
  quizArea.on("click", ".quiz_restart", function() {
    quizReset();
  });

  quizArea.on("click", ".quiz_ans_area ul li", function() {
    if ($("#true_indicate").length) {
    } else {
      quizArea.find(".quiz_decide").addClass("ready");
      quizArea.find(".selected").removeClass("selected");
      $(this).addClass("selected");
    }
  });
  //シャッフル
  function quizShuffle() {
    var bool = [1, -1];
    $(".quiz_ans_area ul").html(
      $(".quiz_ans_area ul li").sort(function(a, b) {
        return bool[Math.floor(Math.random() * bool.length)];
      })
    );
  }
  //イロハニ
  function quizIroha() {
    for (let i = 0; i < 4; i++) {
      $(".quiz_ans_area ul li")
        .eq(i)
        .prepend("<p>" + choice[i] + "</p>");
      if (
        $(".quiz_ans_area ul li")
          .eq(i)
          .is("[id=true_no]")
      ) {
        shuffled_true = choice[i];
      }
    }
  }
  //結果の表示
  function quizResult() {
    quizArea.find(".quiz_set").hide();
    var text = quiz_fin_cnt + "問中" + quiz_success_cnt + "問正解！";
    if (quiz_fin_cnt === quiz_success_cnt) {
      text += "<br>全問正解おめでとう！";
    }
    text +=
      '<br><input type="button" value="もう一度挑戦する" class="quiz_restart">';
    quizArea.find("#quiz_result").html(text);
    quizArea.find("#quiz_result").show();
    quizArea.find("#quiz_record").show();
    ans_import = ans_record.join("");
    console.log(ans_import);
    ans_import = parseInt(ans_import, 2);
    console.log(ans_import);
    quizRecord();
  }

  //数値のリセット
  function quizReset() {
    quizArea.html(quiz_html);
    quiz_cnt = 0;
    quiz_success_cnt = 0;
    quizShow();
    quizArea.find("#quiz_next").hide();
    quizArea.find(".quiz_decide").show();
  }
  //解答の記録
  function quizRecord() {
    $.ajax({
      url: "/year/update",
      type: "POST",
      dataType: "html",
      async: true,
      data: {
        quiz_s_c: ans_import,
        // quiz_s_c: gon.ans_import
        // quiz_s_c: "5",
        quiz_s_d: 55
      }
    });
  }
});
