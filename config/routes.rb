Rails.application.routes.draw do
  devise_for :users
  root 'photos#index'

  get 'search', to: 'search#index'
  resources :photos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
