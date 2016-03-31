class ReviewsController < ApplicationController


  def new
    @review = Review.new
  end

  def create
    @review = Review.create review_params
  end

  def show
    @review = Review.find params[:id]
  end

  def edit
    @review = @current_review
  end

  def update
    @review = @current
  end

  private
  def review_params
    params.require(:user).permit(:comments, :rating)
  end

end
