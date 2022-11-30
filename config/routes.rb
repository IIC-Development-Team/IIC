Rails.application.routes.draw do
  resources :applications
  root  'home#index'
  get   'home/about'
end
