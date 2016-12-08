class Api::EventsController < ApplicationController

# one single route -> api/events
# api/events?filter=user

# api/events?filter=group&group_id=35
# api/events
  def index
    if params[:filter] == "user"
      @events = User.find(current_user.id).events
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
