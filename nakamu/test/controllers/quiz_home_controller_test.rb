require 'test_helper'

class QuizHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get quiz_home_top_url
    assert_response :success
  end

end
