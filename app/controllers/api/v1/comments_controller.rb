module Api
  module V1
    class CommentsController < ApiController
      load_and_authorize_resource
      def index
        @user = User.find(params[:user_id])
        @post = @user.posts.find(params[:post_id])
        @comments = @post.comments
        render json: @comments
      end

      def create
        post = Post.find(params[:post_id])
        comment = post.comments.new(Text: comment_params[:Text], user: current_user)

        if comment.save
          render json: comment, status: :created, location: comment
        else
          render json: comment.errors, status: :unprocessable_entity
        end
      end

      private

      def comment_params
        params.require(:data).permit(:Text)
      end
    end
  end
end
