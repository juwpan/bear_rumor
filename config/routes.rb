Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }
  
  resources :authors, :alphabets, :users

  resources :songs do
    resources :ratings
  end

  get 'song_all', action: :song_all, controller: 'songs'
  get 'user_song_all', action: :user_song_all, controller: 'songs'

  root "songs#index"

  get 'results', to: 'results#index', as: 'results'
end
