class Api::UsersController < ApplicationController


  def index
    if(params[:filter] == "next")
      @event = User.next_event(current_user.id).first
      render 'api/events/show'
    else
      render json: ["You shouldn't be here"]
    end
  end

  def show
    @user = current_user
    render :show
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login(@user)
      render 'api/users/show'
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def groups
    @groups = User.find(params[:user_id]).groups
    render json: @groups
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      render 'api/users/show'
    else
      render json: @user.errors.full_messages, status: 422
    end
  end


  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :first_name, :last_name, :profile_photo)
  end

end
