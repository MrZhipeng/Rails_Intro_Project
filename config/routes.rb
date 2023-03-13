Rails.application.routes.draw do
  resources :addresses
  get "about/index"
  get "home/index"
  get "types/index"
  get "types/show"
  get "players/index"
  get "players/show"
  get "pokemons/index"
  get "pokemons/show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "about" => "about#index"
  get "about" => "pages#about", as: "about"
  root to: "home#index"
  resources :pokemons, only: %i[index show] do
    collection do
      get "search"
    end
  end
  resources :players, only: %i[index show]
  resources :types, only: %i[index show]
end
