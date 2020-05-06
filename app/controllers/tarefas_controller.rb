class TarefasController < ApplicationController
  def index
    @tarefas = Tarefa.all

    render :index, status: :ok
  end

  def create
    @tarefa = Tarefa.new(tarefa_params)

    if @tarefa.save
      render :show, status: :created
    else
      render json: @tarefa.errors, status: :unprocessable_entity
    end
  end

  def update
    @tarefa = Tarefa.find_by(id: params[:id])

    if @tarefa.update(tarefa_params)
      render :show, status: :ok
    else
      render json: @tarefa.errors, status: :unprocessable_entity
    end
  end

  private

    def tarefa_params
      params.require(:tarefa).permit(:descricao, :finalizada)
    end
end
