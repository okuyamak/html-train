class QuizYearController < ApplicationController

  before_action :authenticate_user
  before_action :miss_import
  before_action :year_2019, only: [:r01_10, :r01_20, :r01_30, :r01_40, :r01_50, :r01_miss]
  before_action :no_1, only: [:r01_10]
  # after_action :redirect_quiz, except: [:R01, :update, :home]

  def miss_import
  @@year = QuizYear.find_by(user_id: session[:user_id])
  $miss_select = {
    "2010" => @@year.miss2010,
    "2011" => @@year.miss2011,
    "2012" => @@year.miss2012,
    "2013" => @@year.miss2013,
    "2014" => @@year.miss2014,
    "2015" => @@year.miss2015,
    "2016" => @@year.miss2016,
    "2017" => @@year.miss2017,
    "2018" => @@year.miss2018,
  }
  end

  def year

  end
  def select
    $quiz_year = [params[:year]]
    $quiz_no = params[:no].to_i
    $miss_set = [$miss_select[params[:year]]]
    redirect_quiz
  end
  def miss
    $quiz_year = [params[:year].to_i]
    $quiz_no = 0
    $miss_set = [$miss_select[params[:year]]]
    redirect_quiz
  end
  def type
    # $types = [params[:type]]
    $types = 10
  end

  def redirect_quiz
    redirect_to("/quiz/base")
  end

  def update
    @year =        params[:quiz_year]
    @no =          params[:quiz_no]
    @miss =        params[:miss_set]
    @success_cnt = params[:quiz_success_cnt]
    puts "ここからupdate"
    puts @year
    puts @no
    puts @miss
    puts @success_cnt

    # eval("@@year.miss#{year} =  miss")
    # $miss_select[year] = miss
    puts $miss_select[@year]
    puts @@year.miss2011
    # eval("@@year.miss#{year} = #{miss}")
    # eval("@@year.miss#{year} = 00000000001111111111000000000011111111110000000000")
    # eval("@@year.miss#{@year} = 00000000001111111111000000000011111111110000000000")
    @@year.miss2011 = "00000000001111111111000000000011111111110000000000"
    puts @@year.miss2011
    @@year.save
    if no ==0
    else
      @score_y = ScoreYear.find_by(user_id: session[:user_id])
      eval("@score_y.y#{$quiz_year}_#{$quiz_no+9} =  success_cnt")
      @score_y.save
    end

  end


  def quizyear_import


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
