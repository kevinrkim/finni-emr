Rails.application.routes.draw do
  get 'patients/index'
  get 'patients/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "patients#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
