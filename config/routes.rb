Rails.application.routes.draw do
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'
  get 'task/:id/edit', to: 'tasks#edit', as: :edit
  get 'task/:id', to: 'tasks#show', as: :task
  delete 'task/:id', to: 'tasks#destroy'
  patch 'task/:id', to: 'tasks#update'
  post 'tasks', to: 'tasks#create'
end
