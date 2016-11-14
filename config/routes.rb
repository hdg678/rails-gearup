Rails.application.routes.draw do
  devise_for :users
  get 'bookings/index'

  get 'bookings/show'

  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/edit'

  get 'bookings/update'

  get 'bookings/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'equipments/index'

  get 'equipments/show'

  get 'equipments/new'

  get 'equipments/create'

  get 'equipments/edit'

  get 'equipments/update'

  get 'equipments/destroy'

  root to: 'pages#home'
  resources :users do
    resources :equipments
    resources :bookings
  end
end
