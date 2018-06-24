require 'test_helper'

class OrdemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordem = ordems(:one)
  end

  test "should get index" do
    get ordems_url
    assert_response :success
  end

  test "should get new" do
    get new_ordem_url
    assert_response :success
  end

  test "should create ordem" do
    assert_difference('Ordem.count') do
      post ordems_url, params: { ordem: { cliente: @ordem.cliente, colaborador: @ordem.colaborador, data: @ordem.data, relato: @ordem.relato, resultado: @ordem.resultado } }
    end

    assert_redirected_to ordem_url(Ordem.last)
  end

  test "should show ordem" do
    get ordem_url(@ordem)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordem_url(@ordem)
    assert_response :success
  end

  test "should update ordem" do
    patch ordem_url(@ordem), params: { ordem: { cliente: @ordem.cliente, colaborador: @ordem.colaborador, data: @ordem.data, relato: @ordem.relato, resultado: @ordem.resultado } }
    assert_redirected_to ordem_url(@ordem)
  end

  test "should destroy ordem" do
    assert_difference('Ordem.count', -1) do
      delete ordem_url(@ordem)
    end

    assert_redirected_to ordems_url
  end
end
