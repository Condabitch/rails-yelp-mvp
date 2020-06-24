Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :new, :create]
  end
end

#RESTAURANT INDEX A visitor can see the list of all restaurants.
# GET "restaurants"
#NEW/CREATE/SHOW RESTAURANT She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"
#SHOW RESTAURANT/REVIEW INDEX She/He can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/38"
# NEW/CREATE REVIEW She/He can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
# And that’s it!

# RESTAURANT ROUTES
# index
# show
# new
# create

# REVIEW ROUTES
# index
# new
# create
