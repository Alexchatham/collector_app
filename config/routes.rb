CollectorApp::Application.routes.draw do
  resources :locations

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  
  root to: 'static_pages#home'
  
  match '/users',    to: 'static_pages#users'
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'

end
