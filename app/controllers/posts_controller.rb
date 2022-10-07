class PostsController < ApplicationController
  def index
    @user2 = User.find(params[:user_id])
    @posts = @user2.posts
  end

  def new
    @post = Post.new
    respond_to do |format|
      format.html { render :new, locals: { post: @post } }
    end
  end

  def create
    @post = Post.new(post_params)
    respond_to do |format|
      format.html do
        if @post.save
          flash[:success] = 'Success'
          redirect_to user_posts_path(current_user, @post)
        else
          flash.now[:error] = "Error: Post could not be saved"
          render :new, locals: { post: @post }
        end
      end
    end
    
  end

  def show
    @posta = Post.find params[:id]
  end

  private

  def post_params
      params.require(:post).permit(:title, :text).merge(author: current_user, commentscounter: 0, likescounter: 0)
    end
end
