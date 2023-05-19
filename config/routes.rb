Rails.application.routes.draw do
  get 'tickets/index'
  get 'tickets/show/:id', to: 'tickets#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/consume', to: 'consumer#consume'
    end
  end
  # Defines the root path route ("/")
  root 'tickets#index'
end
