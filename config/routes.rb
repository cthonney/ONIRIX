Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :dreamlogs do
    resources :dreams, only: [:new, :create, :index, :show]
  end

  resources :dreams, only: [:edit, :update, :destroy]
  resources :interpretations, only: [:edit, :update, :destroy]
end
