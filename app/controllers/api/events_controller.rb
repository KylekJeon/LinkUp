class Api::EventsController < ApplicationController

  def index
    if params[:filter] == "user"
      @events = User.find(current_user.id).events
    elsif params[:filter] == "user_groups"
      @events = Event.find_user_groups_events(current_user.id)
    elsif params[:filter] == "group"
    else
      @events = Event.all
    end
    render json: @events
  end

  def show

  end



  def create
  end





  private
  def event_params
    params.permit(:event).require(:name, :location, :event_time, :description)
  end

end
