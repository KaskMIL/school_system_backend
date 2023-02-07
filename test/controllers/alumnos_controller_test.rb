require "test_helper"

class AlumnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumno = alumnos(:one)
  end

  test "should get index" do
    get alumnos_url, as: :json
    assert_response :success
  end

  test "should create alumno" do
    assert_difference("Alumno.count") do
      post alumnos_url, params: { alumno: { apellido: @alumno.apellido, curso_id: @alumno.curso_id, familia_id: @alumno.familia_id, nombre: @alumno.nombre } }, as: :json
    end

    assert_response :created
  end

  test "should show alumno" do
    get alumno_url(@alumno), as: :json
    assert_response :success
  end

  test "should update alumno" do
    patch alumno_url(@alumno), params: { alumno: { apellido: @alumno.apellido, curso_id: @alumno.curso_id, familia_id: @alumno.familia_id, nombre: @alumno.nombre } }, as: :json
    assert_response :success
  end

  test "should destroy alumno" do
    assert_difference("Alumno.count", -1) do
      delete alumno_url(@alumno), as: :json
    end

    assert_response :no_content
  end
end
