class QuizYearController < ApplicationController

  before_action :authenticate_user,{only: [:R01]}

  def home
  end
  def R01
    gon.year = @@quiz_year
    gon.no = @@quiz_no
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

  def update
    @year = QuizYear.find_by(user_id: session[:user_id])
    if @year
      @year.r01_10 = params[:quiz_s_c]
      @year.r01_20 = params[:quiz_s_d]
    else
      @year = QuizYear.new(user_id:session[:user_id], r01_10:params[:quiz_s_c])
    end
    @year.save
  end
end
