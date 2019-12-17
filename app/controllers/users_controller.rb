class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    redirect_to user_params
  end
  
  private

    def user_params
      params.require(:user).permit(:nickname, :kind, :level)
    end
end
