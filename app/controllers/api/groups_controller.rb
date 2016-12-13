class Api::GroupsController < ApplicationController


  def index

    if(params[:filter] == "user")
      @groups = current_user.groups
    elsif(params[:filter] == "all")
      @groups = Group.all
    elsif(params[:filter])
      @groups = Group.search_group(params[:filter])
    end

      render json: @groups
  end

  def show
    @group = Group.find(params[:id])
    render :show
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      Admin.create(group_id: @group.id, user_id: current_user.id)
      Membership.create(group_id: @group.id, user_id: current_user.id)
      render json: @group
    else
      render json: @group.errors.full_messages, status: 422
    end
  end

  def join
    group_id = params[:id].to_i
    @new_membership = current_user.memberships.new(group_id: group_id)
    if @new_membership.save!
      @users = Group.find(group_id).users
      render 'api/users/index'
    else
      render json: @new_membership.errors.full_messages, status: 422
    end
  end

  def leave
    group_id = params[:id].to_i
    @membership = Group.find(group_id).memberships.where("memberships.user_id = ?", current_user.id)
    if Membership.destroy(@membership)
      @users = Group.find(group_id).users
      render 'api/users/index'
    else
      render json: @membership.errors.full_messages, status: 422
    end
  end

  def fetch
    if(params[:filter] == "users")
      @users = Group.find(params[:group_id]).users
      render 'api/users/index'
    elsif(params[:filter] == "admins")
      @users = Group.find(params[:group_id]).administrators
      render 'api/users/index'
    end
  end


  private
  def group_params
    params.require(:group).permit(:name, :description, :category)
  end

end
