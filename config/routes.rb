Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #CRUD
  #verb 'path' to: 'controller#action'

  #CREATE
  get '/tasks/new', to: 'tasks#new'

  #READ all
  get '/tasks', to: 'tasks#index'

  #READ one
  get '/tasks/:id', to: 'tasks#show', as: :task

  #UPDATE
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'

  #DELETE
  delete '/tasks/:id', to: 'tasks#destroy'
end
