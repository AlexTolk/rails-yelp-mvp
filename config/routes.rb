Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  get 'restaurants/:id/reviews/new', to: 'reviews#new'
  post 'restaurants/:id/reviews', to: 'reviews#create'
end
