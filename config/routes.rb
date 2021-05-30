Rails.application.routes.draw do
  
  root to: 'projects#index'
  
  devise_for :users, controllers: {
        registrations: 'users/registrations',
        sessions: 'users/sessions'
  }
  
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    post 'login', to: 'devise/sessions#create'
    delete 'signout', to: 'devise/sessions#destroy'
    post 'sign_in_required', to: 'users/resistrations#sign_in_required'
    get 'profile', to: 'users/resistrations#profile'
    get 'account', to: 'users/resistrations#account'
    get 'new', to: 'users/resistrations#new'
    post 'create', to: 'users/resistrations#create'
  end
 
  resources :users, only: [:show]
  
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