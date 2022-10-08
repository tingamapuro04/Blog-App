class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    respond_to do |format|
      format.html { render :new, locals: { comment: @comment } }
    end
  end

  def create
    @comment = Comment.new(comments_params)
    respond_to do |format|
      format.html do
        if @comment.save
          flash[:success] = 'Success'
          redirect_to user_post_path(current_user, @comment.post)
        else
          flash.now[:error] = 'Error: Comment could not be saved'
          render :new, locals: { comment: @comment }, status: 422
        end
      end
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:text).merge(author: current_user, post_id: params.require(:post_id))
  end
end
