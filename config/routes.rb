Rails.application.routes.draw do
  devise_for :users

  resources :users, only: :show
  
  resources :brands, only: [:index, :show] do
    resources :brewages
  end

  resources :top, only: [:index] do
    collection do
      get 'search'
    end
  end

  root 'top#search'
end
