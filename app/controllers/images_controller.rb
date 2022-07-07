class ImagesController < ApplicationController
  def index
    images = Image.all
    render json: images.as_json
  end
  def show
    image = Image.find_by(id: params[:id])
    render json: image.as_json
  end
  def create
    image = Image.new(
      url: params["url"],
      manga_id: params["manga_id"],
    )
    image.save
    render json: image.as_json
  end
  def update
    image = Image.find_by(id: params[:id])
    image.url = params["url"] || image.url
    image.manga_id = params["manga_id"] || image.manga_id
    image.save
    render json: image.as_json
  end
  def destroy
    image = Image.find_by(id: params[:id])
    image.destroy
    render json: { message: "Image deleted"}
  end
end
