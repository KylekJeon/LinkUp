class Api::EventsController < ApplicationController



  def show

  end



  def create
  end





  private
  def event_params
    params.permit(:event).require(:name, :location, :event_time, :description)
  end

end
