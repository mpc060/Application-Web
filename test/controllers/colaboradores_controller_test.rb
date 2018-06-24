require 'test_helper'

class ColaboradoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colaboradore = colaboradores(:one)
  end

  test "should get index" do
    get colaboradores_url
    assert_response :success
  end

  test "should get new" do
    get new_colaboradore_url
    assert_response :success
  end

  test "should create colaboradore" do
    assert_difference('Colaboradore.count') do
      post colaboradores_url, params: { colaboradore: { nome: @colaboradore.nome } }
    end

    assert_redirected_to colaboradore_url(Colaboradore.last)
  end

  test "should show colaboradore" do
    get colaboradore_url(@colaboradore)
    assert_response :success
  end

  test "should get edit" do
    get edit_colaboradore_url(@colaboradore)
    assert_response :success
  end

  test "should update colaboradore" do
    patch colaboradore_url(@colaboradore), params: { colaboradore: { nome: @colaboradore.nome } }
    assert_redirected_to colaboradore_url(@colaboradore)
  end

  test "should destroy colaboradore" do
    assert_difference('Colaboradore.count', -1) do
      delete colaboradore_url(@colaboradore)
    end

    assert_redirected_to colaboradores_url
  end
end
