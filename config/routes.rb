Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/cities" => "cities#index"
    post "/cities" => "cities#create"
    get "/cities/:id" => "cities#show"

    
    get "/reviews" => "reviews#index"
    post "/reviews" => "reviews#create"
    get "/reviews/:id" => "reviews#how"
    patch "/reviews/:id" => "reviews#update"
    delete "/reviews/:id" => "reviews#destroy"

    post "/users" => "users#create"
    get "/users/:id" => "cities#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"
  end
end
