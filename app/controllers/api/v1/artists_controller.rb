class Api::V1::ArtistsController < ApplicationController
    before_action :set_artist, only: [:show,:update,:destroy]

    def index
      artists = Artist.all
      render json: artists, status: 200
    end

    def create
      artist = Artist.create(artist_params)
      render json: artist, status: 201
    end

    def update
      @artist.update(artist_params)
      render json: @artist, status: 200
    end

    def destroy
      artistId = @artist.id
      @artist.destroy
      render json: {message:"Your artist has been deleted", artistId:artistId}
    end

    def show
      render json: @artist, status: 200
    end

    private
    def artist_params
      params.permit(:name)
    end

    def set_artist
      @artist = Artist.find(params[:id])
    end
  end
