class QuizHomeController < ApplicationController
  before_action :authenticate_user
  def top
  end
  def base
    gon.year = $quiz_year
    gon.no = $quiz_no
    gon.miss = $quiz_miss
    gon.year2 = $quiz_year2
  end
end