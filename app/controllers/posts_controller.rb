class PostsController < ApplicationController
  before_action :set_post, only: %i[destroy edit update]
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
  end

  def create
    @post = Post.create!(post_params)
    render @posts
  end

  def destroy
    @post.destroy!
  end

  def edit
  end

  def update
    @post.update!(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:title, :name, :content)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end