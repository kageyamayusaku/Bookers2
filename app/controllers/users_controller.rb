class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index]

  def show
    @user = User.find(params[:id])
  end

  def index
  end

  def edit
  end

  def update
  end

end
