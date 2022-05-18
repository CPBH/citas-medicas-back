require "test_helper"

class Api::V1::MedicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_medico = api_v1_medicos(:one)
  end

  test "should get index" do
    get api_v1_medicos_url, as: :json
    assert_response :success
  end

  test "should create api_v1_medico" do
    assert_difference("Api::V1::Medico.count") do
      post api_v1_medicos_url, params: { api_v1_medico: { titulo: @api_v1_medico.titulo, usuario_id: @api_v1_medico.usuario_id } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_medico" do
    get api_v1_medico_url(@api_v1_medico), as: :json
    assert_response :success
  end

  test "should update api_v1_medico" do
    patch api_v1_medico_url(@api_v1_medico), params: { api_v1_medico: { titulo: @api_v1_medico.titulo, usuario_id: @api_v1_medico.usuario_id } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_medico" do
    assert_difference("Api::V1::Medico.count", -1) do
      delete api_v1_medico_url(@api_v1_medico), as: :json
    end

    assert_response :no_content
  end
end
