class Api::EventsController < ApplicationController

  def index
    if params[:filter] == "user"
      @events = User.find(current_user.id).events
    elsif params[:filter] == "user_groups"
      @events = Event.find_user_groups_events(current_user.id)
    elsif params[:filter] == "group"
      @events = Group.find(params[:groupId]).events
    else
      @events = Event.all
    end
    render :index
  end

  def show
    @event = Event.find(params[:id])
    render :show
  end

  def rsvp
    event_id = params[:event_id]
    @new_rsvp = current_user.rsvps.new(event_id: event_id)

    if @new_rsvp.save
      @users = Event.find(event_id).users
      render json: @users
    else
      render json: ["Could not join event"]
    end
  end

  def fetch
    @users = Event.find(params[:event_id]).users
    render json: @users
  end


  def create
  end





  private
  def event_params
    params.permit(:event).require(:name, :location, :event_time, :description)
  end

end