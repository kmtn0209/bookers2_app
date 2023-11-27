class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def edit

  end

  def create
    user = User.new(user_params)
    user.save
    redirect_to '/books'
  end

  private

  def user_params
    params.require(:user).permit(:id, :image)
  end


end
