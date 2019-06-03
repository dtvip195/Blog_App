Rails.application.routes.draw do
  root "static_pages#home"

  devise_for :users

  get "/search", to: "static_pages#search"

  resources :posts, only: %i(show)
end
