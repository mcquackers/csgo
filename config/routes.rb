Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :matches, only: [:index, :show]
  resources :teams, only: [:index, :show]
end
