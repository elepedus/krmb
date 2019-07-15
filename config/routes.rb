Rails.application.routes.draw do
  devise_for :user
  authenticate :user, ->(user) { user.admin? } do
    mount Blazer::Engine, at: "blazer"
  end
  root to: "pages#index"
  resources :vehicles
  get "/pages/*page", to: 'pages#show'
  authenticated :user do
    root to: "vehicles#index", as: :authenticated_root
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
