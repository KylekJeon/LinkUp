class Api::GroupsController < ApplicationController


  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    render :show
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
    group_id = params[:id].to_i
    @new_membership = current_user.memberships.new(group_id: group_id)
    if @new_membership.save
      @users = Group.find(group_id).users
      render json: @users
    else
      render json: ["unsuccessful in joining group"]
    end
  end

  def fetch
    @users = Group.find(params[:group_id]).users
    render json: @users
  end


  private
  def group_params
    params.permit(:group).require(:name, :description)
  end

end
