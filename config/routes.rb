Rails.application.routes.draw do
  root "movies#index"
  get "/movies/error_movie_not_found", to: 'movies#error_movie_not_found'
  resources :movies
end
