class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new #rendering a form so a user can make changes
    @post = Post.new
  end

  def create #form submits to create
    @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to post_path(@post)
  end

  def edit #render a form to edit a resource
    @post = Post.find(params[:id])
  end

  def update #user submits the form to
    @post = Post.find(params[:id])
    @post.title = params[:post][:title]
    @post.description = params[:post][:description]
    @post.save
    redirect_to post_path(@post)
  end
end
