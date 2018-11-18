Rails.application.routes.draw do
  root to: 'tips#show'
  devise_for :users
  resources :competitions
  resources :tips
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
