class QuizTypeController < ApplicationController
  before_action :authenticate_user
  # before_action :year_2019, only: [:r01_10, :r01_20, :r01_30, :r01_40, :r01_50, :r01_miss]
  # before_action :year_, only: [:r01_10, :r01_20, :r01_30, :r01_40, :r01_50, :r01_miss]
  before_action :no_101, except: [:type1]
  append_after_action :redirect_quiz,only: [:type1_2010]
  def type1
  end
  def type1_2010
  end
  def type1_2011
    redirect_quiz
  end
  def type1_2012
    redirect_quiz
  end
  def type1_2013
    redirect_quiz
  end
  def type1_2014
    redirect_quiz
  end
  def type1_2015
    redirect_quiz
  end
  def type1_2016
    redirect_quiz
  end
  def type1_2017
    redirect_quiz
  end
  def type1_2018
    redirect_quiz
  end
  def redirect_quiz
    redirect_to("/quiz/base")
  end
  def no_101
    $quiz_year = 2019
    $quiz_miss = @@year.miss2019
    $quiz_no = 102
  end
end
