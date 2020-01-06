require 'test_helper'

class QuizYearControllerTest < ActionDispatch::IntegrationTest
  test "should get R01" do
    get quiz_year_R01_url
    assert_response :success
  end

end
