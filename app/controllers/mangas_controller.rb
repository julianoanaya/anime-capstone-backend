class MangasController < ApplicationController
  def index
    mangas= Manga.all
    render json: mangas.as_json
  end
  def show
    manga = Manga.find(params["id"])
    render json: manga.as_json
  end
  def create
    manga = Manga.new(
      name: params[:name],
      chapter: params[:chapter],
      volume: params[:volume],
      description: params[:description],
    )
    manga.save
    render json: {message: "Manga created"}
  end
end
