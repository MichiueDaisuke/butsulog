class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post=Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    post = Post.new(reputation: params[:reputation])
    post.save
    redirect_to("/posts/index")
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post=Post.find_by(id: params[:id])
    @post.reputation=params[:reputation]
    if @post.save
    redirect_to("/posts/index")

    else
      render("posts/edit")
      end
  end

  def destroy
    @post= Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end
end
