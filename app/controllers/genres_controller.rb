class GenresController < ApplicationController
  def index
    genres = Genre.all
    render json: genres.as_json
  end
  def show
    genre = Genre.find_by(id: params[:id])
    render json: genre.as_json
  end
  def create
    genre = Genre.new(
      category: params[:category],
    )
    genre.save
    render json: genre.as_json
  end
  def update
    genre = Genre.find_by(id: params[:id])
    genre.category = params[:category] || genre.category
    genre.save
    render json: genre.as_json
  end
  def destroy
    genre = Genre.find_by(id: params[:id])
    genre.destroy
    render json: {message: "Genre deleted"}
  end
end
