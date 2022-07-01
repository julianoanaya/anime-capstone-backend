class AnimeWheresController < ApplicationController
  def index
    anime_wheres = AnimeWhere.all
    render json: anime_wheres.as_json
  end
  def create
    anime_where = AnimeWhere.new(
      anime_id: params["manga_id"],
      where_to_watch_id: params["where_to_watch_id"],
      url: params["url"],
    )
    anime_where.save
    redner json: anime_where.as_json
  end
  def destroy
    anime_where = AnimeWhere.find_by(id: params[:id])
    anime_where.destroy
    render json: { message: "Selected where to watch anime has been successfully removed"}
  end
end
