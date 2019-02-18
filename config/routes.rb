Rails.application.routes.draw do
  resources :vehicles
  devise_for :users
  get "/pages/*page", to: 'pages#show'
  authenticated :user do
    root to: "vehicles#index", as: :authenticated_root
  end
  root to: "pages#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
