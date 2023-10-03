Rails.application.routes.draw do
  root 'products#home'
  
  resources :third_party_api_endpoints
  resources :products do
      get :home, on: :collection
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
