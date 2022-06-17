class MangasController < ApplicationController
  def index
    mangas= Manga.all
    render json: mangas.as_json
  end
end
