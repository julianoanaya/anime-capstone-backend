class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites.all
    render template: "favorites/index"
  end
  def show
    favorite = Favorite.find_by(id: params[:id])
    render json: anime.as_json
  end
  def create
    favorite = Favorite.new(
      user_id: current_user.id,
      anime_id: params[:anime_id],
      manga_id: params[:manga_id],
    )
    favorite.save
    render json: favorite.as_json
  end
  def update
    favorite = Favorite.find_by(id: params[:id])
    favorite.user_id = params[:user_id] || favorite.user_id
    favorite.anime_id = params[:anime_id] || favorite.anime_id
    favorite.manga_id = params[:manga_id] || favorite.manga_id
    favorite.save
    render json: favorite.as_json
  end
  def destroy
    favorite = Favorite.find_by(id: params[:id])
    favorite.destroy
    render json: {message: "favorite deleted"}
  end
end
