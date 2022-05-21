require "test_helper"

class OrdensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orden = ordens(:one)
  end

  test "should get index" do
    get ordens_url, as: :json
    assert_response :success
  end

  test "should create orden" do
    assert_difference("Orden.count") do
      post ordens_url, params: { orden: { descripcion: @orden.descripcion, margen_de_tiempo: @orden.margen_de_tiempo } }, as: :json
    end

    assert_response :created
  end

  test "should show orden" do
    get orden_url(@orden), as: :json
    assert_response :success
  end

  test "should update orden" do
    patch orden_url(@orden), params: { orden: { descripcion: @orden.descripcion, margen_de_tiempo: @orden.margen_de_tiempo } }, as: :json
    assert_response :success
  end

  test "should destroy orden" do
    assert_difference("Orden.count", -1) do
      delete orden_url(@orden), as: :json
    end

    assert_response :no_content
  end
end
