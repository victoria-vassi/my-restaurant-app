Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :reviews, only: [:show, :new, :create]
  end
    resources :reviews, only: [:show, :new, :destroy]

  root to: 'restaurants#index'

  resources :restaurants, only: [:show, :new]
end
