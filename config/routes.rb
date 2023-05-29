Rails.application.routes.draw do
  get 'pages/about'
  root "pages#homepage"
  resources :idea6s
  resources :idea5s
  resources :idea4s
  resources :idea3s
  resources :idea2s
  resources :ideas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
