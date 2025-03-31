Rails.application.routes.draw do
  namespace :api do
    rest_root
    rest_resources :user
    rest_resources :authentication
    rest_resources :shop_reviews
  end
end
