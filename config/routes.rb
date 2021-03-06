Rails.application.routes.draw do
  resources :goals
  devise_for :users
  root to: 'reservations#index'
  resources :orders
  resources :reservations, only: [:new, :create, :show] do
    resources :menu_details, only: [:index, :create]
  end
end
