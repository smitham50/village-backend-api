Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: [:create]

      post "/signup", to: "users#create"
      # post "/login", to: "auth#login"
      # get "/auto_login", to: "auth#auto_login"
    end
  end
end
