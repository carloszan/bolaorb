Rails.application.routes.draw do
  resources :rankings, only: [:index]
  root to: 'games#index'
  devise_for :users
  resources :competitions
  resources :tips
  resources :games

  get '/games/:id/close', to: 'games#close', as: 'close_game'
  post '/game/:id/close', to: 'games#finished', as: 'finish_game'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
