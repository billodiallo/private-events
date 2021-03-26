Rails.application.routes.draw do


  get '/user/:id', to: 'users#profile', as: :user



  get '/users/index'










  resources :events







  devise_for :users







  root 'events#index'







  resources :events do







    member do







      get 'visitor'







      get 'cancel_visitor'







    end







  end







  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html







end







