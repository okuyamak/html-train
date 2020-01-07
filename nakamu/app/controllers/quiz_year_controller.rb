class QuizYearController < ApplicationController

  before_action :authenticate_user,{only: [:R01]}

  def R01
  end
end
