class DirectionsController < ApplicationController
  before_action :set_direction, only: [:show, :edit, :update, :destroy]

  # GET /directions
  # GET /directions.json
  def index
      redirect_to(root_url) unless current_user

      @user = current_user
      @places = Place.where(user_id: @user).order("created_at DESC")
    end

  # GET /directions/1
  # GET /directions/1.json
  def show
    redirect_to(root_url) unless current_user
  end

  # GET /directions/new
  def new
    redirect_to(root_url) unless current_user
  end

  # GET /directions/1/edit
  def edit
    redirect_to(root_url) unless current_user
  end

  # POST /directions
  # POST /directions.json
  def create

    redirect_to(root_url) unless current_user
    #
    #
    # @direction = Direction.new(direction_params)
    #
    # respond_to do |format|
    #   if @direction.save
    #     format.html { redirect_to @direction, notice: 'Direction was successfully created.' }
    #     format.json { render :show, status: :created, location: @direction }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @direction.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /directions/1
  # PATCH/PUT /directions/1.json
  def update
    redirect_to(root_url) unless current_user

    # respond_to do |format|
    #   if @direction.update(direction_params)
    #     format.html { redirect_to @direction, notice: 'Direction was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @direction }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @direction.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /directions/1
  # DELETE /directions/1.json
  def destroy
    redirect_to(root_url) unless current_user
    # @direction.destroy
    # respond_to do |format|
    #   format.html { redirect_to directions_url, notice: 'Direction was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direction
      @direction = Direction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def direction_params
      params.fetch(:direction, {})
    end
end
