Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :restaurants, only: [:index]

  # Defines the root path route ("/")
  # root "posts#index"
end


# Un visiteur peut voir la liste de tous les restaurants.
# GET "restaurants"
# Un visiteur peut ajouter un nouveau restaurant et être redirigé vers la vue show de la page de ce nouveau restaurant.
# GET "restaurants/new"
# POST "restaurants"
# Un visiteur peut voir les détails d’un restaurant, avec tous les avis associés au restaurant.
# GET "restaurants/38"
# Un visiteur peut ajouter un nouvel avis à un restaurant.
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
