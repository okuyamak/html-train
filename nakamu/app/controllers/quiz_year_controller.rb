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
    redirect_quiz
  end
  def redirect_quiz
    redirect_to("/quiz/base")
  end

  def update
    @year = QuizYear.find_by(user_id: session[:user_id])
    if @year
    else
      @year = QuizYear.new(user_id:session[:user_id])
      @year.save
    end
    @score_y = ScoreYear.find_by(user_id: session[:user_id])
    if @score_y
    else
      @score_y = ScoreYear.new(user_id:session[:user_id])
      @score_y.save
    end

    case @@quiz_year
    when 2019 then
      @year.miss2019 = params[:mistake]
      case @@quiz_no
      when 1  then
        @score_y.y2019_10 = params[:quiz_success_cnt]
      when 11  then
        @score_y.y2019_20 = params[:quiz_success_cnt]
      when 21  then
        @score_y.y2019_30 = params[:quiz_success_cnt]
      when 31  then
        @score_y.y2019_40 = params[:quiz_success_cnt]
      when 41  then
        @score_y.y2019_50 = params[:quiz_success_cnt]
      else
      end
    else
    end
    @year.save
    @score_y.save
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
