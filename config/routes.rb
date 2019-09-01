Rails.application.routes.draw do
  devise_for :users

  resources :users, only: :show
  resources :brands, only: :show do
    collection do
      get 'search'
    end
  end

  root 'brands#index'
end
