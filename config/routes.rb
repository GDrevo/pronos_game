Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show]
  resources :seasons, only: %i[index show]
  resources :leagues, only: %i[index show]
  resources :teams, only: %i[index show]
  resources :matchweeks, only: %i[index show]
  resources :matches, only: %i[index show edit update] do
    resources :bets, only: %i[new create edit update]
  end
end
