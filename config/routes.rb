Rails.application.routes.draw do
  get 'bookings/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'flights#index'
  resources :flights
  resources :airports
  resources :bookings
  # Defines the root path route ("/")
  # root "articles#index"
end
