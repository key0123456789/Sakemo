Rails.application.routes.draw do
  devise_for :users

  resources :users, only: :show
  
  resources :brands, only: [:index, :show] do
    resources :brewages, only: [:show, :new, :create]
  end

  resources :top, only: [:index] do
    collection do
      get 'search'
    end
  end

  root 'top#search'
end
