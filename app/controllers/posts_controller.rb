class PostsController < ApplicationController
  before_action :authorise, :only => [:new]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      @current_user.posts << @post # Associate this post with the user
      req = Cloudinary::Uploader.upload(params[:image_url])
      @post.update( :image => req["url"])
      redirect_to @post
    else
      render :new
    end

  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    post.update post_params
    redirect_to post
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :description, :location,:availability, :vegetarian, :portion, :image, :user_id)
  end
  def authorise
    unless (@current_user.present?)
      flash[:danger] = "Please Login / Singup to make a post"
      redirect_to root_path
    end
  end

end
