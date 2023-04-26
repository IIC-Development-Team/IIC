Rails.application.routes.draw do
  resources :user_apps
  resources :articles
  resources :wallets
  resources :applications
  devise_for :users
  root  'home#index'
  get   'home/about'
  get   'home/donate'
  get   'home/contributors'
  get   'home/search'
  get   'application/control', to: "applications#control"
  get   'wallet/control', to: "wallets#control"
  get   'home/control'
  get   'home/clients'
  get   'export', to: "home#export", as:'export'
end
