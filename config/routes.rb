Rails.application.routes.draw do
  devise_for :users
  root to: 'bunkers#home'

  resources :bunkers, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :update]
  end

  resources :bookings, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
