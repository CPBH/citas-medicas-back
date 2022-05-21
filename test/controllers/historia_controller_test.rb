require "test_helper"

class HistoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @historium = historia(:one)
  end

  test "should get index" do
    get historia_url, as: :json
    assert_response :success
  end

  test "should create historium" do
    assert_difference("Historium.count") do
      post historia_url, params: { historium: { antecedentes: @historium.antecedentes, cirugiias: @historium.cirugiias, enfermedades: @historium.enfermedades, medicamentos: @historium.medicamentos, resultados: @historium.resultados, string: @historium.string } }, as: :json
    end

    assert_response :created
  end

  test "should show historium" do
    get historium_url(@historium), as: :json
    assert_response :success
  end

  test "should update historium" do
    patch historium_url(@historium), params: { historium: { antecedentes: @historium.antecedentes, cirugiias: @historium.cirugiias, enfermedades: @historium.enfermedades, medicamentos: @historium.medicamentos, resultados: @historium.resultados, string: @historium.string } }, as: :json
    assert_response :success
  end

  test "should destroy historium" do
    assert_difference("Historium.count", -1) do
      delete historium_url(@historium), as: :json
    end

    assert_response :no_content
  end
end
