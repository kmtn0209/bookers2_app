class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user.id)
  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to '/books'
  end

  private

  def user_params
    params.require(:user).permit(:name,  :id, :image, :email, :introduction)
  end


end
