class QuizHomeController < ApplicationController
  before_action :authenticate_user
  def top
  end
  def base
    gon.year = $quiz_year
    gon.no = $quiz_no
    gon.miss = $quiz_miss
    gon.year2 = $quiz_year2
    gon.miss_2010 = $miss_2010
    gon.miss_2011 = $miss_2011
    gon.miss_2012 = $miss_2012
    gon.miss_2013 = $miss_2013
    gon.miss_2014 = $miss_2014
    gon.miss_2015 = $miss_2015
    gon.miss_2016 = $miss_2016
    gon.miss_2017 = $miss_2017
    gon.miss_2018 = $miss_2018
    gon.miss_2019 = $miss_2019
  end
end
