require "test_helper"

class ConsultaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consultum = consulta(:one)
  end

  test "should get index" do
    get consulta_url, as: :json
    assert_response :success
  end

  test "should create consultum" do
    assert_difference("Consultum.count") do
      post consulta_url, params: { consultum: { cirugias: @consultum.cirugias, enfermedades: @consultum.enfermedades, medicamentos: @consultum.medicamentos, numeroDocumento: @consultum.numeroDocumento } }, as: :json
    end

    assert_response :created
  end

  test "should show consultum" do
    get consultum_url(@consultum), as: :json
    assert_response :success
  end

  test "should update consultum" do
    patch consultum_url(@consultum), params: { consultum: { cirugias: @consultum.cirugias, enfermedades: @consultum.enfermedades, medicamentos: @consultum.medicamentos, numeroDocumento: @consultum.numeroDocumento } }, as: :json
    assert_response :success
  end

  test "should destroy consultum" do
    assert_difference("Consultum.count", -1) do
      delete consultum_url(@consultum), as: :json
    end

    assert_response :no_content
  end
end
