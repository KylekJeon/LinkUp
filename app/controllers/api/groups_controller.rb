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
    @new_membership = current_user.memberships.new(group_id: params[:id])
    if @new_membership.save
      render json: ["successfully joined group"]
    else
      render json: ["unsuccessful in joining group"]
    end
  end





  private
  def group_params
    params.permit(:group).require(:name, :description)
  end

end
