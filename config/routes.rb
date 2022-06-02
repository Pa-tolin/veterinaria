Rails.application.routes.draw do
  resources :clients
  resources :pets
  resources :pet_histories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pets#index"
end
