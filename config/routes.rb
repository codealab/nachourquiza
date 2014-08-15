Rails.application.routes.draw do
  
  get 'static_pages/index'

  root 'static_pages#index'
  
  resources :users
  resources :spots
  resources :sessions

  match '/home',    to: 'static_pages#index',   via: 'get'
  match '/user',    to: 'users#show',           via: 'get'
  match '/edit',    to: 'users#edit',           via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  get ':controller(/:action(/:id))(.:format)'

end