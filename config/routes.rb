Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "dashboard", to: "pages#dashboard"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :partners, only: [:create, :index, :show, :destroy, :new, :edit,:update] do
    collection do
      get :my_service
    end
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :show, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
