Rails.application.routes.draw do
  resources :attendances
  devise_for :users
  resources :events, only: %i[new show create index]
  resources :users, only: %i[new show create index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "events#index"
end
