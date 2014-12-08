class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def create
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to :back, :alert => "Whoops! Please login to see this page."
    end
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