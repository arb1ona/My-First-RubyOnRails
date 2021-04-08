Rails.application.routes.draw do
  devise_for :admins, path: 'admins', controllers:{
    sessions:'admins/sessions'
  }

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions'
  }
  resources :books
 # get 'home/index'
 get 'home/about'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
