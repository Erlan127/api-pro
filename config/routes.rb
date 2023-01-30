Rails.application.routes.draw do
  resources :conans
  devise_for :users
  get 'pages/home'
  get 'pages/restricted'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
