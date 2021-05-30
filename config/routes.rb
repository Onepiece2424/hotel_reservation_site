Rails.application.routes.draw do
  
  root to: 'projects#index'
  
  devise_for :users, controllers: {
        registrations: 'users/registrations'
}

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    post 'login', to: 'devise/sessions#create'
    delete 'signout', to: 'devise/sessions#destroy'
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