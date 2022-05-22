Rails.application.routes.draw do
  resources :contacts
  resources :univs
  resources :users
  root to: 'users#index'
end
