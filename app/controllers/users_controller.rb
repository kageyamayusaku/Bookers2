class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @user_books = @user.books
  end

  def index
    @book = Book.new
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end

end
