require 'test_helper'

class QuizTypeControllerTest < ActionDispatch::IntegrationTest
  test "should get type1" do
    get quiz_type_type1_url
    assert_response :success
  end

end
