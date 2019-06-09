Rails.application.routes.draw do
  namespace :admin do
    resources :preferences, only: [:index]
  end

  resources :artists, :songs
end
