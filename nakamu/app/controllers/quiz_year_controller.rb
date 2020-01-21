class QuizYearController < ApplicationController

  before_action :authenticate_user,{only: [:R01]}

  def home
  end
  def R01
    gon.year = @@quiz_year
    gon.no = @@quiz_no
    gon.miss = @@quiz_miss
    if @@quiz_year2
      gon.year2 = @@quiz_year2
    end
  end
  def r01_10
    @@quiz_year = 2019
    @@quiz_no = 1
    @@quiz_miss = @@year.miss2019
    redirect_to("/year/R01")
  end
  def r01_20
    @@quiz_year = 2019
    @@quiz_no = 11
    @@quiz_miss = @@year.miss2019
    redirect_to("/year/R01")
  end
  def r01_30
    @@quiz_year = 2019
    @@quiz_no = 21
    @@quiz_miss = @@year.miss2019
    redirect_to("/year/R01")
  end
  def r01_40
    @@quiz_year = 2019
    @@quiz_no = 31
    @@quiz_miss = @@year.miss2019
    redirect_to("/year/R01")
  end
  def r01_50
    @@quiz_year = 2019
    @@quiz_no = 41
    @@quiz_miss = @@year.miss2019
    redirect_to("/year/R01")
  end
  def r01_miss
    @@quiz_year = 2019
    @@quiz_no = 0
    @@quiz_miss = @@year.miss2019
    redirect_to("/year/R01")
  end
  def r01_type1
    @@quiz_year = 2019
    @@quiz_year2 = 2018
    @@quiz_no = 102
    @@quiz_miss = @@year.miss2019
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
end
