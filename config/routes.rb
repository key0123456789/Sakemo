Rails.application.routes.draw do
  devise_for :users

  resources :users, only: :show
  resources :brands, only: [:index, :show] do
    collection do
      get 'search'
    end
  end

  root 'top#index'
end
