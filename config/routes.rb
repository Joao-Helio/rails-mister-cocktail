Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end

  # get "/cocktails", to: "cocktails#index", as: :cocktails
  # get "/cocktails/:id", to: "cocktails#show"
  # get "/cocktails/new", to: "cocktails#new", as: :new_cocktail
  # post "/cocktails", to: "cocktails#create"
  resources :doses, only: [:destroy]  
end
