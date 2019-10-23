Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  get 'restaurants/:id', to: 'restaurants#show'
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/new', to: 'restaurants#new', as: :new
end
