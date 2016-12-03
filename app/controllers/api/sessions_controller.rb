class Api::SessionsController < ApplicationController


  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if @user
      login(@user)
      render "api/users/show"
    else
      render(
        json: ["Invalid username/password combination"],
        status: 401
      )
    end
  end

  def destroy
    if !current_user
      render(
        json: ["No one is signed in"],
        status: 401
      )
    else
      logout
      render json: {}
    end
  end


end
