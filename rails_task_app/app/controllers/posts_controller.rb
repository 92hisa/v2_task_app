class PostsController < ApplicationController
  
  def new
    @post = Post.new
  end
  
  def create
    # raise params.inspect
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def index
    @post = Post.all
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/"
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/"
  end
  
  #これより下は外部からの引き出しは無効
  private
  def post_params
    params.require(:post).permit(:title, :start_Day, :End_Day, :content)
  end
end
