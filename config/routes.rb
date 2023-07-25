Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :article_tags
  resources :tags
  resources :articles
  resources :writers
  post '/charges', to: 'charges#create'
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :index, :show, :update]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/persist', to: "users#persist"
    end
  end
end
