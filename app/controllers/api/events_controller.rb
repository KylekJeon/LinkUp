class Api::EventsController < ApplicationController


  def index
    user_id = params[:user_id]
    group_id = params[:group_id]
    if(user_id)
      user = User.find(user_id)
      @events = user.events
    elsif (group_id)
      group = Group.find(group_id)
      @events = group.events
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
