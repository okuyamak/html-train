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
      puts "yahho"
    else
      @year = QuizYear.new(user_id:session[:user_id])
      @year.save
    end
    case @@quiz_year
    when 2019 then
      case @@quiz_no
      when 1  then @year.y2019_10 = params[:ans_import]
      when 11  then @year.y2019_20 = params[:ans_import]
      when 21  then @year.y2019_30 = params[:ans_import]
      when 31  then @year.y2019_40 = params[:ans_import]
      when 41  then @year.y2019_50 = params[:ans_import]
      else
      end
    else
    end
    @year.save
    # @ddd = "@year.r01_10"
    # # @year.ddd = params[:quiz_s_c]
    # @ddd = params[:quiz_s_c]
    # @year.r01_20 = params[:quiz_s_d]
  end
end
