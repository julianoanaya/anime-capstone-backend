class MangaAnimeGenresController < ApplicationController
  
  def index
    manga_anime_genres = MangaAnimeGenre.all
    render json: manga_anime_genres.as_json
  end

  def show
    manga_anime_genre = MangaAnimeGenre.find_by(id: params[:id])
    render json: manga_anime_genre.as_json
  end

  def create
    manga_anime_genre = MangaAnimeGenre.new(
      manga_id: params[:manga_id],
      anime_id: params[:anime_id],
      genre_id: params[:genre_id],
    )
    manga_anime_genre.save
    render json: manga_anime_genre.as_json
  end

  def update
    manga_anime_genre = MangaAnimeGenre.find_by(id: params[:id])
    manga_anime_genre.manga_id = params[:manga_id] || manga_anime_genre.manga_id
    manga_anime_genre.anime_id = params[:anime_id] || manga_anime_genre.anime_id
    manga_anime_genre.genre_id = params[:genre_id] || manga_anime_genre.genre_id
    manga_anime_genre.save
    render json: manga_anime_genre.as_json
  end

  def destroy
    manga_anime_genre = MangaAnimeGenre.find_by(id: params[:id])
    manga_anime_genre.destroy
    render json: { message: "Manga_Anime_Genre destroyed"}
  end
end
