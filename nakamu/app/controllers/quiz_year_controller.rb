class QuizYearController < ApplicationController

  before_action :authenticate_user
  before_action :year_2019, only: [:r01_10, :r01_20, :r01_30, :r01_40, :r01_50, :r01_miss]
  before_action :no_1, only: [:r01_10]
  before_action :no_11, only: [:r01_20]
  before_action :no_21, only: [:r01_30]
  before_action :no_31, only: [:r01_40]
  before_action :no_41, only: [:r01_50]
  # after_action :redirect_quiz, except: [:R01, :update, :home]


  def r01_10
    redirect_quiz
  end
  def r01_20
    redirect_quiz
  end
  def r01_30
    redirect_quiz
  end
  def r01_40
    redirect_quiz
  end
  def r01_50
    redirect_quiz
  end
  def r01_miss
    $quiz_no = 0
    redirect_quiz
  end
  def redirect_quiz
    redirect_to("/quiz/base")
  end

  def update

    @@year = QuizYear.find_by(user_id: session[:user_id])
    eval("@@year.miss#{$quiz_year} =  params[:mistake]")
    @@year.save
    if quiz_no ==0
    else
      @score_y = ScoreYear.find_by(user_id: session[:user_id])
      eval("@score_y.y#{$quiz_year}_#{$quiz_no+9} =  params[:quiz_success_cnt]")
      @score_y.save
    end
  end

  def year_2019
    $quiz_year = 2019
    $quiz_miss = @@year.miss2019
  end
  def no_1
    $quiz_no = 1
  end
  def no_11
    $quiz_no = 11
  end
  def no_21
    $quiz_no = 21
  end
  def no_31
    $quiz_no = 31
  end
  def no_41
    $quiz_no = 41
  end
end
