Rails.application.routes.draw do
  
  root to: 'projects#index'
  get 'projects/index'  
  
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  
  get "users/index" => "users#index"
  
  resources :users, only: [:index]
  
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    post 'login', to: 'devise/sessions#create'
    delete 'signout', to: 'devise/sessions#destroy'
    post 'sign_in_required', to: 'users/resistrations#sign_in_required'
  end
 
  resources :users do
    collection do
      get 'account','profile','sign_in_required'
      post 'sign_in_required'
    end
  end
  
  resources :posts,:myaccounts
  
  resources :projects do
    collection do  
      get 'search'
    end
  end
end