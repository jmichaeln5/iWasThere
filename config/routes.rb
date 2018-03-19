Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  root 'home#index'

  resources :users
  resources :places

  resources :users do
    resources :places #, :except => [:update, :destroy]
  end


  # post '/users/:id/places/new', to: 'places#create', as: 'place'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
