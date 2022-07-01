Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/mangas" => "mangas#index"
  get "/mangas/:id" => "mangas#show"
  post "/mangas" => "mangas#create"
  patch "/mangas/:id" => "mangas#update"
  delete "/mangas/:id" => "mangas#destroy"

  get "/animes" => "animes#index"
  get "/animes/:id" => "animes#show"
  post "/animes" => "animes#create"
  patch "/animes/:id" => "animes#update"
  delete "/animes/:id" => "animes#destroy"
end
