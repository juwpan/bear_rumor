Rails.application.routes.draw do
  devise_for :users, path: 'devise'
  
  resources :users, :authors, :alphabets, :songs

  get 'song_all', action: :song_all, controller: 'songs'

  root "songs#index"

  get 'results', to: 'results#index', as: 'results'
end
