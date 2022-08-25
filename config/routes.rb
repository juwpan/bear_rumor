Rails.application.routes.draw do
  devise_for :users, path: 'devise'

  root "songs#index"

  resources :users

  resources :songs
end
