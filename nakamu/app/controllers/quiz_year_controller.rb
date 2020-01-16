class QuizYearController < ApplicationController

  before_action :authenticate_user,{only: [:R01]}
  # before_action ,{only: [:R01]}

  def home
  end
  def r01_10
    # @quiz_year = 2019
    # @quiz_no = 1
    redirect_to("/year/R01")
  end
  def R01
    # gon.year = @quiz_year
    # gon.no = @quiz_no
    gon.year = 2019
    gon.no = 1

  end

  def update
    @year = QuizYear.find_by(user_id: session[:user_id])
    if @year
      @year.r01_10 = params[:quiz_s_c]
      # @year.r01_20 = 2
      @year.r01_20 = params[:quiz_s_d]
      # @year.r01_10 = 5
    else
      @year = QuizYear.new(user_id:session[:user_id], r01_10:params[:quiz_s_c])
    end
    @year.save
  end
end
