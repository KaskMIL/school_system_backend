require "test_helper"

class Api::V1::FamiliasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_familias_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_familias_show_url
    assert_response :success
  end
end
