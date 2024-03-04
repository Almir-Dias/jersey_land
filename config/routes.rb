Rails.application.routes.draw do
  devise_for :users
  root to: "shirts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :shirts do 
    resources :orders, only: [:create]
    get "my_shirts", on: :collection
  end

  resources :orders, only: [:index, :show]
  # Defines the root path route ("/")
  # root "posts#index"
end
