Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'

  resources :pharmacies, only: [ :index ]
  get 'contact', to: 'pages#contact'
  post 'new_contact', to: 'pages#new_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
