Rails.application.routes.draw do
  resources :book_reviews
  root "books#index"
end
