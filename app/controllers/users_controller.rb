class UsersController < ApplicationController
  before_action :authenticate_user!, except: :signup
 
  def show
  end

  def edit
  end

  def create
    Users.create(user_params)
    redirect_to root_path
  end

  def update
  end

  def logout
  end

  def signup
  end

  private
  def user_params
    params.require(:user).permit(:nickname, :email)
  end
  
end
