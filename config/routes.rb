Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'

  namespace :account do
    resources :equipment
    resources :bookings
  end
end
