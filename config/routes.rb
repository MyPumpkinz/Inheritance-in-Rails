Rails.application.routes.draw do
  resources :univs
  resources :users
  root to: 'users#index'
end
