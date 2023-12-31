Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :jets, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create, :index]
  end
  patch "/bookings/:id/accept", to: "bookings#accept", as: "accept"
  patch "/bookings/:id/reject", to: "bookings#reject", as: "reject"
  get "/dashboard", to: "users#show", as: "dashboard"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
