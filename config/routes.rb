Rails.application.routes.draw do

  root "static_pages#index"

  resources :sessions

  resources :courses
  resources :units
  resources :lectures
  
  resources :deliveries
  resources :attachments

  resources :units do
    resources :deliveries do
      resources :attachments
    end
  end

  resources :password_resets
  resources :payments
  resources :users do
    resources :payments
    resources :spots
    resources :deliveries
    resources :units
    resources :lectures
  end

  match '/home',    to: 'static_pages#index',   via: 'get'
  match '/user',    to: 'users#show',           via: 'get'
  match '/edit',    to: 'users#edit',           via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  post "payments/concept"
  post "courses/unit"
  post "courses/plan"
  get "courses/accordeon"
  get "courses/unit"
  get "courses/positions"

  get ':controller(/:action(/:id))(.:format)'

end