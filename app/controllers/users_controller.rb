class UsersController < ApplicationController

  def add
    # @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login!(@user)
      render :show
    else
      render :new
    end

  end


  def show
    render :show
  end

  def index
    render :index
  end


  private

  def user_params
    params.require(:user).permit(:email, :password)
  end


end
