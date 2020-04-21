Rails.application.routes.draw do
  devise_for :users
  root "reservations#index"

  resources :helps do
    resources :reservations
  end

  resources :users

end
