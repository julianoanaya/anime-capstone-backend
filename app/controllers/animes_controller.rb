class AnimesController < ApplicationController
  def index
    animes = Anime.all
    render json: animes.as_json
  end

  def show
    anime = Anime.find_by(id: params[:id])
    render json: anime.as_json
  end

  def create
    anime = Anime.new(
      name: params[:name],
      seasons: params[:seasons],
      episode: params[:episode],
      dub: params[:dub],
      image_url: params[:image_url],
      description: params{:description}
    )
  end

  def update
    anime = Anime.find_by(id: params[:id])
    anime.name = params[:name] || anime.name
    anime.seasons = params[:seasons] || anime.seasons
    anime.episode = params[:episode] || anime.episode
    anime.dub = params[:dub] || anime.dub
    anime.image_url = params[:image_url] || anime.image_url
    anime.description = params[:description] || anime.description

    anime.save
    render json: anime.as_json
  end
  
  def destroy
    anime = Anime.find_by(id: params[:id])
    anime.destroy
  end
end
