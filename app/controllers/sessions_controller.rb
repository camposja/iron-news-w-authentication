class SessionsController < ApplicationController
  # logging in (show the login form)
  def new

  end

 # handle the post from the login form/page
  def create
    email = params[:email]
    password = params[:password]

  # find the user by their email
    user = User.find_by(email: email)

    if user && user.authenticate(password)
      session[:user_id] = user.id

      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to stories_path
  end
end
