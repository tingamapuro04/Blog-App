class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user2 = User.find params[:id]
  end
end
