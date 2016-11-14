Rails.application.routes.draw do
  root to: 'pages#home'
  resources :users do
    resources :equipments
    resources :bookings
  end
end
