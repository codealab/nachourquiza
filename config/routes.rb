Rails.application.routes.draw do

  root 'static_pages#index'

  resources :sessions

  resources :courses
  resources :units
  resources :lectures
  resources :password_resets
  resources :payments
  resources :users
  resources :users do
    resources :payments
    resources :spots
  end

  match '/home',    to: 'static_pages#index',   via: 'get'
  match '/user',    to: 'users#show',           via: 'get'
  match '/edit',    to: 'users#edit',           via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  post "payments/concept"
  post "courses/unit"
  get "courses/unit"
  get "courses/positions"

  get ':controller(/:action(/:id))(.:format)'

end