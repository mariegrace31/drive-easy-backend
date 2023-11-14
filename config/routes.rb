Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "/login", to:"users#login"
      post "/register", to:"users#register"
      resources :cars, only: [:index, :show, :create, :destroy] 
    end
  end
end