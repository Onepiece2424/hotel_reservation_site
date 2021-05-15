Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :posts
  
  
  
  get 'users/index'
  post 'users/index'
  post 'users/search'
  
  get 'users/show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users do
      get 'search' ,on: :collection
  end
end