class PostsController < ApplicationController
  def index
    @user2 = User.find(params[:user_id])
    @posts = @user2.posts
  end

  def show
    @posta = Post.find params[:id]
  end
end
