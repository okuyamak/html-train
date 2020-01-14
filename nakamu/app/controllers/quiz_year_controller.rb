class QuizYearController < ApplicationController

  before_action :authenticate_user,{only: [:R01]}

  def R01
    # gon.user_name = @current_user.name
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
    redirect_to("/")
  end
end
