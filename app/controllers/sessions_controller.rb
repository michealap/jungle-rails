class SessionsController < ApplicationController
  def new
  end

  def create
    # user = User.find_by_email(params[:email])
    # # If user exists and entered password matches.
    # if user && user.authenticate(params[:password])
    #   # Save the user id inside the browser cookie.
    #   session[:user_id] = user.id
    #   redirect_to '/'
    # else
    # # If user's login doesn't work, return to the login form.
    #   redirect_to '/login'
    # end
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else
      @error_login='Invalid Username/password!'
      render :new, alert: @error_login
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
