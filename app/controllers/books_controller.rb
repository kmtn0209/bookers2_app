class BooksController < ApplicationController
  def new
  end

  def index
    @users = User.all
    @user = current_user
    @books = Book.all
    @book = Book.new
  end

  def create
    @user = User.all
    book = Book.new(book_params)
    book.save
    redirect_to '/users/current_user.id'
  end

  def show
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :image)
  end


end
