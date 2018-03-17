class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    # @post= Post.create(params[:post]) #we dont need instance since not passing forward data
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end

  def new
  end

end
