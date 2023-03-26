Rails.application.routes.draw do
  resources :wallets
  devise_for :users
  resources :applications
  root  'home#index'
  get   'home/about'
  get   'home/donate'
  get   'home/contributors'
  get   '/search', to: "applications#search"
  get   'application/control', to: "applications#control"
  get   'wallet/control', to: "wallets#control"
  get   'home/control'
end
