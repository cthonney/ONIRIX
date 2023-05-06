Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: "pages#home"
  get "about", to: "pages#about"
  get "contact", to: "contacts#new"
  get "blog", to: "pages#blog"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :dreamlogs do
    resources :dreams, only: [:new, :create, :index, :show]
  end

  resources :dreams, only: [:edit, :update, :destroy] do
    resources :interpretations, only: [:new, :create, :index, :show]
  end
  resources :interpretations, only: [:edit, :update, :destroy]

  get 'analyze', to: 'interpretations#analyze'
  get 'discuss', to: 'interpretations#discuss'
end
