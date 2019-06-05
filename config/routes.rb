Rails.application.routes.draw do
  root "static_pages#home"

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  get "/search", to: "static_pages#search"

  resources :posts, only: %i(show)
  resources :topics, only: %i(show)
end
