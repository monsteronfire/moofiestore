Rails.application.routes.draw do
  resources :movies, only: [:show, :index]
  
  devise_for :users

  root 'movies#index'

end
