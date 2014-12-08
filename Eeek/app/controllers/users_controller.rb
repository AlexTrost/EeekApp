class UsersController < ApplicationController

  def index
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password)
  end

end