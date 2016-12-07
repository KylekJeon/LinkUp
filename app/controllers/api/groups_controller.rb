class Api::GroupsController < ApplicationController


  def index
    @groups = Group.all
  end

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

  def join
    debugger
    @new_membership = current_user.memberships.new(group_id: params[:id])
    debugger
    @new_membership.save
    render json: ["successfully joined group"]
  end





  private
  def group_params
    params.permit(:group).require(:name, :description)
  end

end
