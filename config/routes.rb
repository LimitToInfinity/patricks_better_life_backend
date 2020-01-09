Rails.application.routes.draw do
  resources :users, only: [:index]
  resources :events, only: [:index, :create, :destroy]

  get "/", to: "events#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
