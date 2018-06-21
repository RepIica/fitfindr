class UsersController < ApplicationController

  def index
    @users = User.all
    #byebug
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    #byebug
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
    @post = Post.new
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end

end
