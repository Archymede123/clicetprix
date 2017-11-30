Rails.application.routes.draw do


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'pages#home'

  resources :pharmacies, only: [ :index ]
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  post 'new_contact', to: 'pages#new_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
