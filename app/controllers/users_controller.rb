class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to(current_user)
  end

  def show
    @user = User.find(params[:id])
    @user_places = @user.places

    redirect_to(root_url) unless current_user.id == @user.id
  end

end






######################################################
######################################################
######################################################



# class UsersController < ApplicationController
#   before_action :authenticate_user!
#
#   def index
#     redirect_to(current_user)
#   end
#
#   def show
#     @user = User.find(params[:id])
#     @user_places = @user.places
#     redirect_to(root_url) unless current_user.id == @user.id
#   end
#
#   def new
#   end
#
#   def update
#     respond_to do |format|
#       if @user.update(user_params)
#         format.html { redirect_to @user, notice: 'Successfully updated.' }
#         format.json { render :show, status: :ok, location: @user }
#       else
#         format.html { render :edit }
#         format.json { render json: @user.errors, status: :unprocessable_entity }
#       end
#     end
#   end
#
#   def destroy
#   end
#
#   private
#
#   def user_params
#     params.require(:user).permit(:email, :password)
#
#   end
#
#
#
#
#
# end
