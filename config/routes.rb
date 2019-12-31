Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get     'login',   to: 'users/sessions#new'
    post    'login',   to: 'users/sessions#create'
    delete  'logout',   to: 'users/sessions#destroy'
    get     'signup',  to: 'users/registrations#new'
  end

  resources :users, only: :show
  
  
  resources :brands, only: [:index, :show] do
    member do
      post "add", to: "clips#create"
    end
    resources :brewages, only: [:show, :new, :create]
  end
  
  resources :clips, only: [:destroy]


  resources :top, only: [:index] do
    collection do
      get 'search'
    end
  end

  root 'top#search'
end
