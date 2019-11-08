require 'test_helper'

class ResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get my_results" do
    get results_my_results_url
    assert_response :success
  end

end
