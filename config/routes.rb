# config/routes.rb

Rails.application.routes.draw do
  # Set the root of your application to the home#index action
  root "home#index"

  # Route for the 'about' page
  get "about", to: "home#about"

  # If you used 'resources :posts' or 'resources :visits' before, you can add them back here
  # Example: resources :posts
  # Example: resources :visits
end