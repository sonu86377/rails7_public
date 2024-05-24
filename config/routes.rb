Rails.application.routes.draw do
  resources :employee_rs
  resources :companies
  resources :product_item1s
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
