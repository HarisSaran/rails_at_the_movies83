Rails.application.routes.draw do
  # get "movies/index"
  # get "movies/show"
  # get "production_companies/index"
  # get "production_companies/show"
  resources :movies, only: %i[index show]
  resources :production_companies, only: %i[index show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
