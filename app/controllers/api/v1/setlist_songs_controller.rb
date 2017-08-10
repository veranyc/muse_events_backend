class Api::V1::SetlistSongsController < ApplicationController
  before_action :set_setlist_song, only: [:show,:update,:destroy]

  def index
    setlist_songs = SetlistSong.all
    render json: setlist_songs, status: 200
  end

  def create
    setlist_song = SetlistSong.create(setlist_songs_params)
    render json: setlist_song, status: 201
  end

  def update
    @setlist_song.update(setlist_song_params)
    render json: @setlist_song, status: 200
  end

  def destroy
    setlist_songId = @setlist_song.id
    @setlist_song.destroy
    render json: {message: "Your setlist song has been deleted", setlist_songId:setlist_songId}
  end

  def show
    render json: @setlist_song, status: 200
  end

  private
  def setlist_song_params
    params.permit(:setlist_id)
  end

  def set_setlist_song
    @setlist_song = SetlistSong.find(params[:id])
  end
end
