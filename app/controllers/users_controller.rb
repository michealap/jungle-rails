class UsersController < ApplicationController

  def new
    # render 'new'
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      # puts user.id
      # puts user.first_name
      redirect_to [:root], notice: 'Account created successfully'
    else
      flash[:error] = 'An error occured!'
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name, 
      :last_name, 
      :email, 
      :password, 
      :password_confirmation)
  end

end


