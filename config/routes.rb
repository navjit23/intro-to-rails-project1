Rails.application.routes.draw do
  get 'home/index'
  resources :players
  resources :fixtures
  resources :tables
  resources :leagues
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
