Rails.application.routes.draw do
  get 'rooms/index'
  devise_for :users
  root to: "pages#home"
  # root to: "rooms#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: %i[index show] do
    resources :invitations, only: %i[index show new create update destroy]
  end
  resources :seasons, only: %i[index show]
  resources :leagues, only: %i[index show]
  resources :teams, only: %i[index show]
  resources :matchweeks, only: %i[index show]
  resources :matches, only: %i[index show edit update] do
    resources :bets, only: %i[new create]
  end
  resources :rooms do
    resources :messages
  end
end
