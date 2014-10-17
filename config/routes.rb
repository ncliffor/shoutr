Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :index] do
    resource :following_relationship, only: [:create, :destroy]
  end

  resources :text_subjects, only: [:create]
  resources :image_subjects, only: [:create]
  resources :followers, only: [:index]
  resource :search, only: [:show]

  resources :shouts, only: [:index]

  resources :shouts, only: [] do
    resource :favorite, only: [:create, :destroy]
  end

  root("shouts#index")

  get "/:username", to: "users#show", as: "user"
end
