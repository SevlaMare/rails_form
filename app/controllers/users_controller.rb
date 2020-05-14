class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # fail
    @user = User.new(
      username: params[:user][:username],
      email: params[:user][:email],
      password: params[:user][:password]
    )

    if @user.save
      puts 'save successful'
      redirect_to new_user_path
    else
      puts 'is not saved'
      render :new
    end
  end
end
