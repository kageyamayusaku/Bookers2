class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def show
    @book = Book.new
  　@user_books = User.joins(:books).select("users.*", "posts.*")
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
