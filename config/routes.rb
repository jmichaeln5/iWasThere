Rails.application.routes.draw do
  resources :directions
  root 'home#index'


  # resources :users
  # resources :places

  # devise_for :users
  ############ devise/registrations - Begin ################
    # get 'users/cancel', to: 'devise/registrations#cancel', as: 'cancel_user_registration'
    #
    # get 'users/sign_up', to: 'devise/registrations#new', as: 'new_user_registration'
    #
    # get 'users/edit', to: 'devise/registrations#edit', as: 'edit_user_registration'
    #
    # patch 'users/', to: 'devise/registrations#update', as: 'user_registration'
    ############ devise/registrations - End ################

    get '/user/', to: 'users#show', as: 'user'
    # get '/user/', to: 'users#show'
    get '/users/', to: 'users#index', as: 'users'
    # get '/users/', to: 'users#index'

  devise_for :users
  resources :users do
    resources :places
  end

  resources :places do
    resources :comments
  end

  # get '/directions/', to: 'directions#index'
resources :directions

  # post '/users/:id/places/new', to: 'places#create', as: 'place'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
