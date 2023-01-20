class UsersController < ApplicationController

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
    unless @user == current_user
      redirect_to user_path(current_user)
    end
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end

end
