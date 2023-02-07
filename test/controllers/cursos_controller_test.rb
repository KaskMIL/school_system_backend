require "test_helper"

class CursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curso = cursos(:one)
  end

  test "should get index" do
    get cursos_url, as: :json
    assert_response :success
  end

  test "should create curso" do
    assert_difference("Curso.count") do
      post cursos_url, params: { curso: { alumno_id: @curso.alumno_id, nombre_curso: @curso.nombre_curso } }, as: :json
    end

    assert_response :created
  end

  test "should show curso" do
    get curso_url(@curso), as: :json
    assert_response :success
  end

  test "should update curso" do
    patch curso_url(@curso), params: { curso: { alumno_id: @curso.alumno_id, nombre_curso: @curso.nombre_curso } }, as: :json
    assert_response :success
  end

  test "should destroy curso" do
    assert_difference("Curso.count", -1) do
      delete curso_url(@curso), as: :json
    end

    assert_response :no_content
  end
end
