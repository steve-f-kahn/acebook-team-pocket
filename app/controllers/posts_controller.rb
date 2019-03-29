class PostsController < ApplicationController


  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    @posts = Post.all
  end

  def edit
    Post.update(params[:post_id], :message => params[:Message])
    redirect_to posts_url
  end

  def update
    @post_id = params[:post_id]
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
