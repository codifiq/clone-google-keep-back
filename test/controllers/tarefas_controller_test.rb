require 'test_helper'

class TarefasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarefa = tarefas(:one)
  end

  test "should get index" do
    get tarefas_url, as: :json
    assert_response :success
  end

  test "should create tarefa" do
    assert_difference('Tarefa.count') do
      post tarefas_url, params: { tarefa: { descricao: @tarefa.descricao, finalizada: @tarefa.finalizada } }, as: :json
    end

    assert_response 201
  end

  test "should show tarefa" do
    get tarefa_url(@tarefa), as: :json
    assert_response :success
  end

  test "should update tarefa" do
    patch tarefa_url(@tarefa), params: { tarefa: { descricao: @tarefa.descricao, finalizada: @tarefa.finalizada } }, as: :json
    assert_response 200
  end

  test "should destroy tarefa" do
    assert_difference('Tarefa.count', -1) do
      delete tarefa_url(@tarefa), as: :json
    end

    assert_response 204
  end
end
