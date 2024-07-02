Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root "pages#index"
  get "/:title", to: "pages#show"
  post "/search", to: "pages#search", as: :search_page
  post "/:id", to: "pages#update", as: :update_page
  post "/:id/more", to: "pages#add", as: :add_page
  delete "/:id", to: "pages#destroy", as: :destroy_page
end
