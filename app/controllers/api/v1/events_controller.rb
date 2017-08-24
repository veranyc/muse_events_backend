class Api::V1::EventsController < ApplicationController
  before_action :set_event, only: [:show,:update,:destroy]

  def index
    events = Event.all
    render json: events, status: 200
  end

  def create
    @event = Event.new(event_params)
    # render json: @event, status: 201
    if !!@event.save
      @event.save
      render json: @event
    else
      render json: {errors: @event.errors.full_messages}
    end
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    render json: @event, status: 200
  end


  def destroy
    eventId = @event.id
    @event.destroy
    render json: {message: "Your event has been deleted", eventId:eventId}
  end

  def show
    render json: @event, status: 200
  end

  private
  def event_params
    params.permit(:user_id, :id, :notes, :artist_name, :slfm_setlist, :venue, :city, :state, :country, :slfm_date)
  end
  #
  def set_event
    @event = Event.find(params[:id])
  end
end
