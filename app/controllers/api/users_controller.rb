class Api::UsersController < ApplicationController


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




  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :first_name, :last_name)
  end

end
