Rails.application.routes.draw do
  devise_for :users
  resources :applications
  root  'home#index'
  get   'home/about'
  get   'home/donate'
end
