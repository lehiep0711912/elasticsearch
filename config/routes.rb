Rails.application.routes.draw do
  devise_for :users
  get '/home', to: "books#index"
  root 'books#index'
  # get 'search', to: 'application#search'
   get '/search', to: 'search#search'
  resources :books
  resources :categories

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
