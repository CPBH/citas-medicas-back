require "test_helper"

class CitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @citum = cita(:one)
  end

  test "should get index" do
    get cita_url, as: :json
    assert_response :success
  end

  test "should create citum" do
    assert_difference("Citum.count") do
      post cita_url, params: { citum: { estado: @citum.estado, fecha: @citum.fecha, tipo: @citum.tipo, usuario_id: @citum.usuario_id } }, as: :json
    end

    assert_response :created
  end

  test "should show citum" do
    get citum_url(@citum), as: :json
    assert_response :success
  end

  test "should update citum" do
    patch citum_url(@citum), params: { citum: { estado: @citum.estado, fecha: @citum.fecha, tipo: @citum.tipo, usuario_id: @citum.usuario_id } }, as: :json
    assert_response :success
  end

  test "should destroy citum" do
    assert_difference("Citum.count", -1) do
      delete citum_url(@citum), as: :json
    end

    assert_response :no_content
  end
end
