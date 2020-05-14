class UsersController < ApplicationController
  def new
    # @user = User.new
  end

  def create
    # fail
    @user = User.new(
      username: params[:user][:username],
      email: params[:user][:email],
      password: params[:user][:password]
    )

    if @user.save
      puts 'SAVE SUCCESSFUL'
      redirect_to new_user_path
    else
      puts 'IS NOT SAVED'
      render :new
    end
  end
end
