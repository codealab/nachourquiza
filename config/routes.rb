Rails.application.routes.draw do

  root 'sessions#new'

  resources :sessions

  resources :courses
  resources :units
  resources :lectures

  resources :users do
    resources :payments
    resources :spots
  end

  match '/home',    to: 'static_pages#index',   via: 'get'
  match '/user',    to: 'users#show',           via: 'get'
  match '/edit',    to: 'users#edit',           via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  get ':controller(/:action(/:id))(.:format)'

end