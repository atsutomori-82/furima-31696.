Rails.application.routes.draw do
  devise_for :users
  resources :items
  root to: 'items#index'
  resources :items, only: [:index, :new, :create, :show]

end
