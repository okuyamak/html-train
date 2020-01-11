class QuizYearController < ApplicationController

  before_action :authenticate_user,{only: [:R01]}

  def create
    # @quiz_year = quiz_years.new(user_id: @user.id)
    # @quiz_year.save
    # redirect_to("/")
  end

  def R01
  end
end
