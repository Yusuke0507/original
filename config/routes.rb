Rails.application.routes.draw do
  devise_for :users
  root to: 'reservations#index'
  resources :users
  resources :reservations, only: [:new, :create, :show] do
    resources :menu_details, only: [:index, :create]
  end
end
