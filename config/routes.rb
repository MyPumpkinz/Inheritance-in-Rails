Rails.application.routes.draw do
  resources :contacts
  resources :univs
  resources :users do
    resources :teachers, controller: :contacts, type: 'Teacher'
    resources :friends, controller: :contacts, type: 'Friend'
  end
  root to: 'users#index'
end
