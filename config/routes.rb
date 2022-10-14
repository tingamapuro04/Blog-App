Rails.application.routes.draw do
  devise_for :users

  root to: 'users#index'

  resources :users, only: %i[index show] do
    resources :posts, only: %i[index new create show destroy] do
      resources :comments, only: %i[new create destroy]
      resources :likes, only: %i[create]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :posts, only: %i[index] do
        resources :comments, only: %i[index new create]
      end
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
