// import aryQuiz from "./R01_1";
$(function() {
  var shuffled_true;
  var quizArea = $(".quiz_area");
  var quiz_html = quizArea.html();
  var quiz_cnt = 0;
  var quiz_fin_cnt = 3;
  var quiz_success_cnt = 0;
  var choice = ["イ", "ロ", "ハ", "ニ"];
  var aryQuiz = [];
  aryQuiz.push(
    { answer: "イ", form: "2" },
    { answer: "ロ", form: "1" },
    { answer: "ハ", form: "4" },
    { answer: "ニ", form: "1" },
    { answer: "イ", form: "1" }
  );

  // var aryQuiz;

  quizReset();

  quizArea.on("click", ".quiz_ans_area ul li", function() {
    quizArea.find(".quiz_decide").addClass("ready");
    quizArea.find(".selected").removeClass("selected");
    $(this).addClass("selected");
  });

  //回答を選択した後の処理
  quizArea.on("click", ".ready", function() {
    //画面を暗くするボックスを表示
    quizArea.find(".quiz_area_bg").show();
    if ($(".selected").is("[id=true_no]")) {
      //正解の処理 〇を表示
      quizArea.find(".quiz_title").addClass("true ans_icon");
      quizArea.find(".quiz_title").text("正解");
      quiz_success_cnt++;
    } else {
      //不正解の処理
      quizArea.find(".quiz_title").addClass("false ans_icon");
      quizArea.find(".quiz_title").text("不正解 答え:　" + shuffled_true);
    }
    quizArea.find(".quiz_ans_area #true_no").attr("id", "true_indicate");
    setTimeout(function() {
      //表示を元に戻す
      quizArea.find(".quiz_ans_area ul li").removeClass("selected");
      quizArea.find(".quiz_title").removeClass("true false ans_icon");
      quizArea.find(".quiz_title").html('第<span class="quiz_no"></span>問');
      quizArea.find(".quiz_area_bg").hide();
      quizArea.find(".quiz_decide").removeClass("ready");
      $(".quiz_question")
        .children("img")
        .attr("src", "../R01_img/2019-1-000.jpg");
      //問題のカウントを進める
      quiz_cnt++;
      if (quiz_fin_cnt > quiz_cnt) {
        //次の問題を設定する
        quizShow();
      } else {
        quizResult();
      }
    }, 1500);
  });
  //リスタートボタン
  quizArea.on("click", ".quiz_restart", function() {
    quizReset();
  });
  //クイズの表示
  function quizShow() {
    quizArea.find(".quiz_no").text(quiz_cnt + 1);
    var que_src = $(".quiz_question")
      .children("img")
      .attr("src")
      .replace("000", quiz_cnt + 1);
    $(".quiz_question")
      .children("img")
      .attr("src", que_src);
    quizArea.find(".quiz_ans_area ul").empty();
    var success = aryQuiz[quiz_cnt]["answer"];
    var form = aryQuiz[quiz_cnt]["form"];
    for (let i = 1; i < 5; i++) {
      var fuga =
        "<li>" + '<img src="../R01_img/2019-1-ANo-000.jpg"/>' + "</li>";
      if (choice[i - 1] == success) {
        fuga =
          "<li  id = true_no >" +
          '<img src="../R01_img/2019-1-ANo-000.jpg"/>' +
          "</li>";
      }
      var ans_src = $(fuga)
        .children("img")
        .attr("src")
        .replace("No", quiz_cnt + 1)
        .replace("000", i);
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
    quizArea.find(".quiz_result").html(text);
    quizArea.find(".quiz_result").show();
  }

  //数値のリセット
  function quizReset() {
    quizArea.html(quiz_html);
    quiz_cnt = 0;
    quiz_success_cnt = 0;
    quizShow();
  }
});
