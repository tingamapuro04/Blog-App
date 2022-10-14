module Api
  module V1
    class PostsController < ApiController
      load_and_authorize_resource
      def index
        p_id = @current_user.id
        @user2 = User.find_by(id: p_id)
        @posts = @user2.posts
        render json: @posts
      end
    end
  end
end
