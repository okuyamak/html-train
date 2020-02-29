class QuizTypeController < ApplicationController
  before_action :authenticate_user


  def type
    $type_no = params[:tupe]
    # redirect_to("/type/params[:type]")
    # redirect_to("/type/type1")
  end

  def select
    $quiz_year = [params[:year]]
    $quiz_no = params[:type].to_i + 100
    redirect_quiz
  end

  def miss
    $quiz_no = params[:type].to_i + 1000
    year = params[:year].to_i
    $quiz_year =[]
    $miss_set = []
    for num in 0..8 do
      $quiz_year.push(year + num)
    end
    $miss_set = [
      @@year.miss2019,
      @@year.miss2011,
      @@year.miss2012,
      @@year.miss2013,
      @@year.miss2014,
      @@year.miss2015,
      @@year.miss2016,
      @@year.miss2017,
      @@year.miss2018,
    ]
    redirect_quiz
  end

end
