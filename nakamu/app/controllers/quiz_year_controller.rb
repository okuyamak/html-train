class QuizYearController < ApplicationController

  before_action :authenticate_user,{only: [:R01]}

  def home
    @year = QuizYear.find_by(user_id: session[:user_id])
  end
  def R01
    gon.year = @@quiz_year
    gon.no = @@quiz_no
    # gon.quiz_10 = @@quiz_10
    # gon.quiz_20 = @@quiz_20
    # gon.quiz_30 = @@quiz_30
    # gon.quiz_40 = @@quiz_40
    # gon.quiz_50 = @@quiz_50
  end
  def r01_10
    @@quiz_year = 2019
    @@quiz_no = 1
    redirect_to("/year/R01")
  end
  def r01_20
    @@quiz_year = 2019
    @@quiz_no = 11
    redirect_to("/year/R01")
  end
  def r01_30
    @@quiz_year = 2019
    @@quiz_no = 21
    redirect_to("/year/R01")
  end
  def r01_40
    @@quiz_year = 2019
    @@quiz_no = 31
    redirect_to("/year/R01")
  end
  def r01_50
    @@quiz_year = 2019
    @@quiz_no = 41
    redirect_to("/year/R01")
  end
  def r01_miss
    @@quiz_year = 2019
    @@quiz_no = 0
    @@quiz_10 = @year.y2019_10
    @@quiz_20 = @year.y2019_20
    @@quiz_30 = @year.y2019_30
    @@quiz_40 = @year.y2019_40
    @@quiz_50 = @year.y2019_50
    redirect_to("/year/R01")
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
      case @@quiz_no
      when 1  then
        @year.y2019_10 = params[:mistake]
        @score_y.y2019_10 = params[:quiz_success_cnt]
      when 11  then
        @year.y2019_20 = params[:mistake]
        @score_y.y2019_20 = params[:quiz_success_cnt]
      when 21  then
        @year.y2019_30 = params[:mistake]
        @score_y.y2019_30 = params[:quiz_success_cnt]
      when 31  then
        @year.y2019_40 = params[:mistake]
        @score_y.y2019_40 = params[:quiz_success_cnt]
      when 41  then
        @year.y2019_50 = params[:mistake]
        @score_y.y2019_50 = params[:quiz_success_cnt]
      else
      end
    else
    end
    @year.save
    @score_y.save
    # @ddd = "@year.r01_10"
    # # @year.ddd = params[:quiz_s_c]
    # @ddd = params[:quiz_s_c]
    # @year.r01_20 = params[:quiz_s_d]
  end
end
