require 'test_helper'

class CoordinatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coordinators_index_url
    assert_response :success
  end

end
