class MangaWheresController < ApplicationController
  def index
    manga_wheres = MangaWhere.all
    render json: manga_wheres.as_json
  end
  def create
    manga_where = MangaWhere.new(
      manga_id: params["manga_id"],
      where_to_read_id: params["where_to_read_id"],
      url_manga: params["url_manga"],
    )
    manga_where.save
    redner json: manga_where.as_json
  end
  def destroy
    manga_where = MangaWhere.find_by(id: params[:id])
    manga_where.destroy
    render json: { message: "Selected where to read manga has been successfully removed"}
  end
end
