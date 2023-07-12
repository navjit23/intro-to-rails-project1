Rails.application.routes.draw do

  resources :players
  resources :fixtures
  resources :tables
  resources :leagues

  root "home#index"
  get 'home/index'
  get 'home/about'
end
