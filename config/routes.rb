Rails.application.routes.draw do
  root "trainers#index"

  resources :trainers do
    resources :pokemons
  end
end
