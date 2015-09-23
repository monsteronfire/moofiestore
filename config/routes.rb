Rails.application.routes.draw do
  get 'carts/show'

  resources :movies, only: [:show, :index]
  
  resource :cart, only: [:show] do
    put 'add/:movie_id', to: 'carts#add', as: :add_to
    put 'remove/:movie_id', to: 'carts#remove', as: :remove_from
  end
  
  devise_for :users

  root 'movies#index'

end
