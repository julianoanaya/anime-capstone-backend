class WhereToReadsController < ApplicationController
  def index
    where_to_reads = WhereToRead.all
    render json: where_to_reads.as_json
  end
  def show
    where_to_read = WhereToRead.find_by(id: params[:id])
    render json: where_to_read.as_json
  end
  def create
    where_to_read = WhereToRead.new(
      reading_service: params["reading_service"],
    )
    where_to_read.save
    render json: where_to_read.as_json
  end
  def update
    where_to_read = WhereToRead.find(id: params[:id])
    where_to_read.reading_service = params["reading_service"] || where_to_watch.reading_service
    where_to_read.save
    render json: where_to_read.as_json
  end
  def destroy
    where_to_read = WhereToRead.find_by(id: params[:id])
    where_to_read.destroy
    render json: { message: "Where to read has been removed"}
  end
end
