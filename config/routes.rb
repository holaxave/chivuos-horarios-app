Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :admins
  get 'pages', to: 'page#account'
  resources :calendar, only: [:index, :new, :create, :destroy]

  devise_for :users
  get 'pages', to: 'page#account'
  resources :calendar, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
