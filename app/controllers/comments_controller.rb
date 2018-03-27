class CommentsController < ApplicationController
  before_action :find_place
  before_action :find_comment, only: [:destroy, :edit, :update]

  def create
    @comment = @place.comments.create(params[:comment].permit(:comment))
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to place_path(@place)
    else
      render 'new'
    end
  end

  def destroy
    @comment.destroy
    redirect_to place_path(@place)
  end

  def edit

  end

  def update
    if @comment.update(params[:comment].permit(:comment))
      redirect_to place_path(@place)
    else
      render 'edit'
    end
  end

  private

  def find_place
    @place = Place.find(params[:place_id])
  end

  def find_comment
    @comment = @place.comments.find(params[:id])
  end

end
