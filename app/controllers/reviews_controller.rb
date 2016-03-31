class ReviewsController < ApplicationController


  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @review = Review.create review_params
    @review.update :user_id => params[:user_id]
    redirect_to user_path(@review.user_id)
  end

  def index
    @reviews = Review.find params[:id]
  end

  def edit
    @review = @current_review
  end

  def update
    @review = @current
  end

  private
  def review_params
    params.require(:review).permit(:comments, :rating, :user_id, :post_id)
  end

end
