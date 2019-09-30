class UsersController < ApplicationController
  before_action :set_user, only: [:index, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.save
    redirect_to users_path
  end

  def edit
  end

  def show
  end

  private

  def set_user
    @user = User.find_by(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password_digest)
  end
end
