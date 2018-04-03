class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to(current_user)
  end

  def edit

  end

  def show
    # @user = User.find(params[:id])
    @user = current_user
    @places = @user.places

    # redirect_to(root_url) unless current_user.id == @user.id
  end

  # Never trust parameters from the scary internet, only allow the white list through.

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation )
  end


end
