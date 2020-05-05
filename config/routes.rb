Rails.application.routes.draw do
  devise_for :users
  root "reservations#index"

  resources :helps
  resources :reservations
  resources :users

end
