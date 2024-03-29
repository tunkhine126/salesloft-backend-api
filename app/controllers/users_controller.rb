class UsersController < ApplicationController

  def index 
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    render json: { user: User.create(@user) }, status: :created
  end

  def show
    render json: User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :title)
  end

end
