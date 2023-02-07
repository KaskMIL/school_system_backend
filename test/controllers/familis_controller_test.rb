require "test_helper"

class FamilisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @famili = familis(:one)
  end

  test "should get index" do
    get familis_url, as: :json
    assert_response :success
  end

  test "should create famili" do
    assert_difference("Famili.count") do
      post familis_url, params: { famili: { alumno_id: @famili.alumno_id, nombre_familia: @famili.nombre_familia } }, as: :json
    end

    assert_response :created
  end

  test "should show famili" do
    get famili_url(@famili), as: :json
    assert_response :success
  end

  test "should update famili" do
    patch famili_url(@famili), params: { famili: { alumno_id: @famili.alumno_id, nombre_familia: @famili.nombre_familia } }, as: :json
    assert_response :success
  end

  test "should destroy famili" do
    assert_difference("Famili.count", -1) do
      delete famili_url(@famili), as: :json
    end

    assert_response :no_content
  end
end
