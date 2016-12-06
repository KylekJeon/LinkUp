class Api::GroupsController < ApplicationController

  def show
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      render 'api/group/show'
    else
      render json: @group.errors.full_messages, status: 422
    end
  end

  private
  def group_params
    params.permit(:group).require(:name, :description)
  end

end
