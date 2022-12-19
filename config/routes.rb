Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/clowns" => "clowns#index"
  get "/clowns/:id" => "clowns#show"
  post "/clowns" => "clowns#create"
  patch "/clowns/:id" => "clowns#update"
  delete "/clowns/:id" => "clowns#destroy"
end
