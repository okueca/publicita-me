Rails.application.routes.draw do
  devise_for :users
  resources :payments
  resources :screnn_posts
  resources :post_dates
  resources :screens
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
