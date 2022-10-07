class PostsController < ApplicationController
  def index
    @user2 = User.find(params[:user_id])
    @posts = @user2.posts
  end

  def new
    post = Post.new
    respond_to do |format|
      format.html { render :new, locals: { post: post } }
    end

  end

  def show
    @posta = Post.find params[:id]
  end
end
