Rails.application.routes.draw do
  devise_for :users, path: 'devise'
  
  resources :users
  resources :songs
  resources :authors
  resources :alphabets

  root "songs#index"
  get 'results', to: 'results#index', as: 'results'
end
