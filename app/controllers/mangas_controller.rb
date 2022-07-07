class MangasController < ApplicationController
  def index
    @mangas = Manga.all
    render template: "mangas/index"
  end
  def show
    manga = Manga.find_by(id: params[:id])
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
  def update
    manga = Manga.find_by(id: params[:id])
    manga.name = params[:name] || manga.name
    manga.chapter = params[:chapter] || manga.chapter
    manga.description = params[:description] || manga.description
    manga.volume = params[:volume] || manga.volume
    manga.save
    render json: manga.as_json
  end
  def destroy
    manga = Manga.find_by(id: params[:id])
    manga.destroy
    render json: {message: "Manga deleted"}
  end
end
