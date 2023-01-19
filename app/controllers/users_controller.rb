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
  end

  def update
  end

end
