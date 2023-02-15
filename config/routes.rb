Rails.application.routes.draw do
  get "pokemons/index"
  get "pokemons/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/pokemons", to: "pokemons#index", as: "pokemons"
  # get "/pokemons/:id", to: "pokemons#show", as: "pokemon"
end
