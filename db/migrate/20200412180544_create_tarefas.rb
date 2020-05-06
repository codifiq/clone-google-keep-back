class CreateTarefas < ActiveRecord::Migration[6.0]
  def change
    create_table :tarefas do |t|
      t.string :descricao
      t.boolean :finalizada

      t.timestamps
    end
  end
end
