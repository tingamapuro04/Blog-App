module Api
  module V1
    class ApiController < ActionController::Base
      before_action :authenticate_user!
    end
  end
end
