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

  get "/where_to_watches" => "where_to_watches#index"
  get "/where_to_watches/:id" => "where_to_watches#show"
  post "/where_to_watches" => "where_to_watches#create"
  patch "where_to_watches/:id" => "where_to_watches#update"
  delete "/where_to_watches/:id" => "where_to_watches#destroy"

  get "/where_to_reads" => "where_to_reads#index"
  get "/where_to_reads/:id" => "where_to_reads#show"
  post "/where_to_reads" => "where_to_reads#create"
  patch "where_to_reads/:id" => "where_to_reads#update"
  delete "/where_to_reads/:id" => "where_to_reads#destroy"

  get "manga_wheres" => "manga_wheres#index"
  post "manga_wheres" => "manga_wheres#create"
  delete "manga_wheres" => "manga_wheres#destroy"

  get "anime_wheres" => "anime_wheres#index"
  post "anime_wheres" => "anime_wheres#create"
  delete "anime_wheres" => "anime_wheres#destroy"

  get "/images" => "images#index"
  get "/images/:id" => "images#show"
  post "/images" => "images#create"
  patch "/images/:id" => "images#update"
  delete "/images/:id" => "images#destroy"

  get "/genres" => "genres#index"
  get "/genres/:id" => "genres#show"
  post "/genres" => "genres#create"
  patch "/genres/:id" => "genres#update"
  delete "/genres/:id" => "genres#destroy"

  get "/manga_anime_genres" => "manga_anime_genres#index"
  get "/manga_anime_genres/:id" => "manga_anime_genres#show"
  post "/manga_anime_genres" => "manga_anime_genres#create"
  patch "/manga_anime_genres/:id" => "manga_anime_genres#update"
  delete "/manga_anime_genres/:id" => "manga_anime_genres#destroy"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/favorites" => "favorites#index"
  get "/favorites/:id" => "favorites#show"
  post "/favorites" => "favorites#create"
  patch "/favorites/:id" => "favorites#update"
  delete "/favorites/:id" => "favorites#destroy"
end
