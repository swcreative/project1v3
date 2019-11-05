class SessionController < ApplicationController
  def new
    end

    def create
      # retrieve the user
      user = User.find_by :email => params[:email]
      # check if the passwords match
      if user.present? && user.authenticate(params[:password])
        session[:user_id] = user.id # Remember the user id from this moment on.
        redirect_to notes_path
      else
        flash[:error] = "Invalid email address or password"
        redirect_to login_path # we don't render on failure because we don't want to help a hacker.
      # redirect somewhere
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_path
    end
end
