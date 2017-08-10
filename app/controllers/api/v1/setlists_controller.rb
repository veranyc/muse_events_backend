class Api::V1::SetlistsController < ApplicationController
  before_action :set_setlist, only: [:show,:update,:destroy]

  def index
    setlists = Setlist.all
    render json: setlists, status: 200
  end

  def create
    setlist = Setlist.create(setlist_params)
    render json: setlist, status: 201
  end

  def update
    @setlist.update(setlist_params)
    render json: @setlist, status: 200
  end

  def destroy
    setlistId = @setlist.id
    @setlist.destroy
    render json: {message: "Your setlist has been deleted", setlistId:setlistId}
  end

  def show
    render json: @setlist, status: 200
  end

  private
  def setlist_params
    params.permit(:event_id)
  end

  def set_setlist
    @setlist = Setlist.find(params[:id])
  end
end
