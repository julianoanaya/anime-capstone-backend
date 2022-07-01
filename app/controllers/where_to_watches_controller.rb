class WhereToWatchesController < ApplicationController
  def index
    where_to_watches = WhereToWatch.all
    render json: where_to_watches.as_json
  end
  def show
    where_to_watch = WhereToWatch.find_by(id: params[:id])
    render json: where_to_watch.as_json
  end
  def create
    where_to_watch = WhereToWatch.new(
      streaming_service: params["streaming_service"],
    )
    where_to_watch.save
    render json: where_to_watch.as_json
  end
  def update
    where_to_watch = WhereToWatch.find(id: params[:id])
    where_to_watch.streaming_service = params["streaming_service"] || where_to_watch.streaming_service
    where_to_watch.save
    render json: where_to_watch.as_json
  end
  def destroy
    where_to_watch = WhereToWatch.find_by(id: params[:id])
    where_to_watch.destroy
    render json: { message: "Where to watch has been removed"}
  end
end
