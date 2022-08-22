Rails.application.routes.draw do
  devise_for :users, path: 'devise'

  root "songs#index"

  resources :users, only: %i[show update]
  
  resources :songs
end
