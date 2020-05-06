Rails.application.routes.draw do
  get '/tarefas', to: 'tarefas#index'
  post '/tarefas', to: 'tarefas#create'
  put '/tarefas/:id', to: 'tarefas#update'
end
