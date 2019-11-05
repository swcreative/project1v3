class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params # create user in memory
    if @user.save # if 'true' that user can be saved, then save
      session[:user_id] = @user.id # Remember the user id from this moment on.
      redirect_to notes_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)

  end

end
