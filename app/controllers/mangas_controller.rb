class MangasController < ApplicationController
  def index
    mangas= Manga.all
    render json: mangas.as_json
  end
  def show
    manga = Manga.find(params["id"])
    render json: manga.as_json
  end
  def 
end
