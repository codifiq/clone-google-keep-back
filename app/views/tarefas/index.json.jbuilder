json.array! @tarefas do |tarefa|
  json.extract!(tarefa, 'id', 'descricao', 'finalizada')
end
