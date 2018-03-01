Rails.application.routes.draw do
  root 'home#index'

  devise_for :users
  resources :places

##########################
########################## delete users as resource after defining nested routes
  resources :users
##########################

# get '/users/:id' => 'users#show'


##########################
##########################

  unauthenticated do
     root :to => 'home#index'
  end

  authenticated do
    root :to => 'home#index'
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
