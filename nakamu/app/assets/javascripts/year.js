"use strict";
$(function() {
  var shuffled_true;
  var quizArea = $(".quiz_area");
  var quiz_html = quizArea.html();
  var quiz_cnt = 0;
  var quiz_fin_cnt = 10;
  var quiz_success_cnt = 0;
  var mistake = 0;
  var choice = ["イ", "ロ", "ハ", "ニ"];
  var i;
  var quiz_cnt_no = gon.no;
  var ans_record = [];
  var quiz_year = gon.year;
  var miss_set = gon.miss_set;
  if (gon.no > 1000) {
    var quiz_type = gon.no - 1000;
  } else if (gon.no > 100) {
    var quiz_type = gon.no - 100;
  }
  var type_index = [];
  if (gon.no == 0 || gon.no > 100) {
    typeMode();
    quiz_fin_cnt = type_index.length;
  }
  quizReset();
  //クイズの表示
  function quizShow() {
    quizArea.find("#quiz_record").hide();
    quizArea.find("#quiz_number").text(quiz_cnt + 1 + "/" + quiz_fin_cnt);
    quizArea.find(".quiz_no").text(quiz_cnt + 1);
    if (gon.no > 100 || gon.no == 0) {
      quiz_year = type_index[quiz_cnt].year;
      quiz_cnt_no = type_index[quiz_cnt].no;
    } else {
      quiz_year = gon.year[0];
    }
    var que_src = $(".quiz_question")
      .children("img")
      .attr("src")
      .replace("year", quiz_year)
      .replace("000", quiz_cnt_no);
    $(".quiz_question")
      .children("img")
      .attr("src", que_src);
    var figure_no = null;
    if (30 <= quiz_cnt_no && quiz_cnt_no <= 34) {
      figure_no = "30_figure";
    } else if (41 <= quiz_cnt_no && quiz_cnt_no <= 45) {
      figure_no = "40_figure";
    } else if (45 <= quiz_cnt_no && quiz_cnt_no <= 50) {
      figure_no = "45_figure";
    } else {
      quizArea.find("#quiz_figure").hide();
    }
    if (figure_no) {
      quizArea.find("#quiz_figure").show();
      var figure_src = $("#quiz_figure")
        .children("img")
        .attr("src")
        .replace("year", quiz_year)
        .replace("000", figure_no);
      $("#quiz_figure")
        .children("img")
        .attr("src", figure_src);
    }
    quizArea.find(".quiz_ans_area ul").empty();
    var q_plus = eval("q_" + quiz_year);
    var success = q_plus[quiz_cnt_no - 1]["ans"];
    var form = q_plus[quiz_cnt_no - 1]["form"];
    for (i = 1; i < 5; i++) {
      var fuga = "<li>" + ' <img src="/year/aNo-000.jpg"/>' + "</li>";
      if (choice[i - 1] == success) {
        fuga =
          "<li  id = true_no >" + '<img src="/year/aNo-000.jpg"/>' + "</li>";
      }
      var ans_src = $(fuga)
        .children("img")
        .attr("src")
        .replace("No", quiz_cnt_no)
        .replace("000", i)
        .replace("year", quiz_year);
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
      case 1:
        quizArea.find(".quiz_ans_area ul li").addClass("form_one");
        break;
      case 2:
        quizArea.find(".quiz_ans_area ul li").addClass("form_two");
        break;
      case 4:
        quizArea.find(".quiz_ans_area ul li").addClass("form_four");
        break;
      default:
        quizArea.find(".quiz_ans_area ul li").addClass("form_one");
        break;
    }
  }

  //回答を選択した後の処理
  quizArea.on("click", ".ready", function() {
    quizAnsShow();
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
      .attr("src", "/year/q000.jpg");
    //問題のカウントを進める
    quiz_cnt++;
    quiz_cnt_no++;
    if (quiz_fin_cnt > quiz_cnt) {
      //次の問題を設定する
      quizShow();
    } else {
      quizRecord();
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
  function quizAnsShow() {
    //画面を暗くするボックスを表示
    quizArea.find(".quiz_area_bg").show();
    quizArea.find("#quiz_next").show();
    quizArea.find(".quiz_decide").hide();
    if ($(".selected").is("[id=true_no]")) {
      //正解の処理 〇を表示
      quizArea.find("quiz_answer").addClass("true ans_icon");
      quizArea.find("quiz_answer").text("正解");
      quiz_success_cnt++;
      ans_record.push(1);
    } else {
      //不正解の処理
      quizArea.find(".quiz_answer").addClass("false ans_icon");
      quizArea.find(".quiz_answer").text("不正解 答え:　" + shuffled_true);
      ans_record.push(0);
    }
    quizArea.find(".quiz_ans_area #true_no").attr("id", "true_indicate");
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
    if (gon.no == 0 || gon.no > 100) {
      typePraOut();
    } else {
      normalOut();
    }

    $.ajax({
      url: "/year/update",
      type: "POST",
      dataType: "html",
      async: true,
      data: {
        quiz_year: gon.year,
        quiz_no: gon.no,
        miss_set: miss_set,
        quiz_success_cnt: quiz_success_cnt
      }
    });
  }
  //type問題復習用　読み込み
  function typeMode() {
    var array = [];
    for (let s = 0; s < gon.year.length; s++) {
      array.push(eval("q_" + gon.year[s]));
    }
    for (let s = 0; s < array.length; s++) {
      for (let t = 0; t < array[s].length; t++) {
        if (gon.no > 1000) {
          if (array[s][t].type == quiz_type && miss_set[s][t] == 0) {
            type_index.push({ year: gon.year[s], no: t + 1, arr: s });
          }
        } else if (gon.no > 100) {
          if (array[s][t].type == quiz_type) {
            type_index.push({ year: gon.year[s], no: t + 1, arr: s });
          }
        } else if (gon.no == 0) {
          if (miss_set[s][t] == 0) {
            type_index.push({ year: gon.year[s], no: t + 1, arr: s });
          }
        }
      }
    }
  }
  //タイプやり直しの出力
  function typeModeOut() {
    for (let i = 0; i < miss_set.length; i++) {
      for (let j = 0; j < miss_set[i].length; j++) {
        miss_set[i].splice(miss_index[i], 1, ans_record[i]);
      }
    }
    mistake = miss_all.join("");
    mistake = mistake.replace(/,/g, "");
    console.log(mistake);
  }
  //誤回答問題の出力
  // function missPraOut() {
  //   for (let i = 0; i < miss_index.length; i++) {
  //     miss_all.splice(miss_index[i], 1, ans_record[i]);
  //   }
  //   mistake = miss_all.join("");
  //   mistake = mistake.replace(/,/g, "");
  //   console.log(mistake);
  // }
  function typePraOut() {
    for (let s = 0; s < ans_record.length; s++) {
      var arr_no = type_index[s].arr;
      var let_no = type_index[s].no;
      miss_set[arr_no] =
        miss_set[arr_no].slice(0, let_no - 1) +
        ans_record[s] +
        miss_set[arr_no].slice(let_no);
    }
  }
  //通常時の出力
  function normalOut() {
    ans_record = ans_record.join("");
    miss_set[0] =
      miss_set[0].slice(0, gon.no - 1) +
      ans_record +
      miss_set[0].slice(gon.no + 9);
    // miss_set[0].splice(gon.no - 1, 10, ans_record);
    // console.log(mistake);
    // mistake = "11111111111111111111111111111111111111111111111111";
    // mistake = "001111111111111111111111111111111111111111111111111";
  }
});
