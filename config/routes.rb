Rails.application.routes.draw do
  # get 'notes/index'
  # get 'notes/show'
  # get 'notes/edit'
  # get 'notes/new'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/new'
  # get 'pages/index'
  # get 'session/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root :to => 'pages#index'

  resources :notes

  resources :users

  resources :shares

  get '/notes/filter/:sid' => 'notes#filter', as: 'share_listing'


  # login is not CRUD
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
