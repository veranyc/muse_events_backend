class Api::V1::PicturesController < ApplicationController
  before_action :set_picture, only: [:show,:update,:destroy]

  def index
    pictures = Picture.all
    render json: pictures, status: 200
  end

  def create
    picture = Picture.create(picture_params)
    render json: picture, status: 201
  end

  def update
    @picture.update(picture_params)
    render json: @picture, status: 200
  end

  def destroy
    pictureId = @picture.id
    @picture.destroy
    render json: {message: "Your picture has been deleted", pictureId:pictureId}
  end

  def show
    render json: @picture, status: 200
  end

  private
  def picture_params
    params.permit(:title, :event_id, :caption, :link)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end
end
