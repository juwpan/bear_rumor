Rails.application.routes.draw do
  devise_for :users, path: 'devise'
  
  resources :authors, :alphabets, :songs, :users

  get 'song_all', action: :song_all, controller: 'songs'
  get 'user_song_all', action: :user_song_all, controller: 'songs'

  root "songs#index"

  get 'results', to: 'results#index', as: 'results'
end
