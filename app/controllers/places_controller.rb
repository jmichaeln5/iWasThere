class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # before_action :correct_user


  # GET /places
  # GET /places.json
  def index
    redirect_to(current_user)
    # @places = Place.where(place_id: @place).order("created_at DESC")
  end

  # GET /places/1
  # GET /places/1.json
  def show
    redirect_to(root_url) unless current_user.id == @place.user.id

    @place = Place.find(params[:id])
    # @comments = Comment.where(job_id: @place).order("created_at DESC")
  end

  # GET /places/new
  def new
    @place = current_user.places.build
  end

  # GET /places/1/edit
  def edit
    @user= User.find(current_user.id)
    redirect_to(root_url) unless current_user.id == @place.user.id
  end

  # POST /places
  # POST /places.json
  def create
    @place = current_user.places.build(place_params)

    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created.' }
        format.json { render :show, status: :created, location: @place }
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to @place, notice: 'Place was successfully updated.' }
        format.json { render :show, status: :ok, location: @place }
      else
        format.html { render :edit }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy

    @user= User.find(current_user.id)
     redirect_to(root_url) unless current_user.id == @place.user.id

    @place.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    ## Confirms the correct user.
    # def correct_user
    #  @user= User.find(current_user.id)
    #   redirect_to(root_url) unless current_user.id == @place.user.id
    # end

    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

    def place_params
      params.require(:place).permit(:title, :description, :rating, :comment, :image, :address, :city, :state, :zip, :user_id)
    end



end






















###################################
###################################
###################################
###################################





#   # GET /places
#   # GET /places.json
#   def index
#     redirect_to(current_user)
#   end
#
#   # GET /places/1
#   # GET /places/1.json
#   def show
#     redirect_to(root_url) unless current_user.id == @place.user.id
#
#     @place = Place.find(params[:id])
#     # @comments = Comment.where(job_id: @place).order("created_at DESC")
#
#   end
#
#   # GET /places/new
#   def new
#     @place = current_user.places.build
#   end
#
#   # GET /places/1/edit
#   def edit
#     @user= User.find(current_user.id)
#     redirect_to(root_url) unless current_user.id == @place.user.id
#   end
#
#   # POST /places
#   # POST /places.json
#   def create
#     @user = User.find(params[:user_id])
#     @place = @user.places.create(params[:place].permit(:title, :description, :rating, :comment, :image, :address, :city, :state, :zip, :user_id))
#     # @place.user_id = current_user.id
#
#     respond_to do |format|
#       if @place.save
#         format.html { redirect_to @place, notice: 'Place was successfully created.' }
#         format.json { render :show, status: :created, location: @place }
#       else
#         format.html { render :new }
#         format.json { render json: @place.errors, status: :unprocessable_entity }
#       end
#     end
#   end
#
#   # PATCH/PUT /places/1
#   # PATCH/PUT /places/1.json
#   def update
#     respond_to do |format|
#       if @place.update(place_params)
#         format.html { redirect_to @place, notice: 'Place was successfully updated.' }
#         format.json { render :show, status: :ok, location: @place }
#       else
#         format.html { render :edit }
#         format.json { render json: @place.errors, status: :unprocessable_entity }
#       end
#     end
#   end
#
#   # DELETE /places/1
#   # DELETE /places/1.json
#   def destroy
#     @user= User.find(current_user.id)
#      redirect_to(root_url) unless current_user.id == @place.user.id
#
#     @place.destroy
#     respond_to do |format|
#       format.html { redirect_to root_path, notice: 'Place was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end
#
#   private
#     # Use callbacks to share common setup or constraints between actions.
#     # Confirms the correct user.
#
#     # def correct_user
#     #  @user= User.find(current_user.id)
#     #   redirect_to(places_path, notice: 'Not cool brah, respect your boundaries') unless current_user.id == @place.user.id
#     # end
#
#     def set_place
#       @place = Place.find(params[:id])
#     end
#
#     # Never trust parameters from the scary internet, only allow the white list through.
#     def place_params
#       params.require(:place).permit(:title, :description, :rating, :comment, :image, :address, :city, :state, :zip, :user_id)
#     end
# end
