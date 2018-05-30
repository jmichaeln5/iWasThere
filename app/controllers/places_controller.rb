class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # before_action :correct_user


  def directions
    redirect_to(root_url) unless current_user

    @user = current_user
    @places = Place.where(user_id: @user).order("created_at DESC")
    @place = Place.where(place_id: @place)
  end

  # GET /places
  # GET /places.json
  def index
    redirect_to(root_url) unless current_user

    @user = current_user
    @places = Place.where(user_id: @user).order("created_at DESC")
  end

  # GET /places/1
  # GET /places/1.json
  def show
    redirect_to(root_url) unless current_user.id == @place.user.id

    @user = current_user
    @place = Place.find(params[:id])
    @comments = Comment.where(place_id: @place).order("created_at DESC")
  end

  # GET /places/new
  def new
    redirect_to(root_url) unless current_user

    @user = current_user
    @place = @user.places.build
  end

  # GET /places/1/edit
  def edit
    redirect_to(root_url) unless current_user.id == @place.user.id

    @user= User.find(current_user.id)
  end

  # POST /places
  # POST /places.json
  def create
    redirect_to(root_url) unless current_user

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
    redirect_to(root_url) unless current_user.id == @place.user.id

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
      params.require(:place).permit(:image, :title, :description, :rating, :comment, :address, :city, :state, :zip, :user_id)
    end



end
