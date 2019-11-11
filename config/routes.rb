Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/cities" => "cities#index"
    post "/cities" => "cities#create"
    get "/cities/:id" => "cities#show"

    #testing
    delete "/cities/:id" => "cities#destroy"

    
    get "/reviews" => "reviews#index"
    post "/reviews" => "reviews#create"
    get "/reviews/:id" => "reviews#show"
    patch "/reviews/:id" => "reviews#update"
    delete "/reviews/:id" => "reviews#destroy"

    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"
  end
end
