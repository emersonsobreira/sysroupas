require "test_helper"

class ItensvendasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itensvenda = itensvendas(:one)
  end

  test "should get index" do
    get itensvendas_url
    assert_response :success
  end

  test "should get new" do
    get new_itensvenda_url
    assert_response :success
  end

  test "should create itensvenda" do
    assert_difference('Itensvenda.count') do
      post itensvendas_url, params: { itensvenda: { preco_total: @itensvenda.preco_total, produto_id: @itensvenda.produto_id, produto_unitario: @itensvenda.produto_unitario, qtd: @itensvenda.qtd, venda_id: @itensvenda.venda_id } }
    end

    assert_redirected_to itensvenda_url(Itensvenda.last)
  end

  test "should show itensvenda" do
    get itensvenda_url(@itensvenda)
    assert_response :success
  end

  test "should get edit" do
    get edit_itensvenda_url(@itensvenda)
    assert_response :success
  end

  test "should update itensvenda" do
    patch itensvenda_url(@itensvenda), params: { itensvenda: { preco_total: @itensvenda.preco_total, produto_id: @itensvenda.produto_id, produto_unitario: @itensvenda.produto_unitario, qtd: @itensvenda.qtd, venda_id: @itensvenda.venda_id } }
    assert_redirected_to itensvenda_url(@itensvenda)
  end

  test "should destroy itensvenda" do
    assert_difference('Itensvenda.count', -1) do
      delete itensvenda_url(@itensvenda)
    end

    assert_redirected_to itensvendas_url
  end
end
