Rails.application.routes.draw do
  devise_for :users
  resources :places
  # root 'home#index'
  #
  #
  # :user 'users/sign_out' 'devise/sessions#destroy'

  unauthenticated do
     root :to => 'home#index'
  end

  authenticated do
    root :to => 'home#index'
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
