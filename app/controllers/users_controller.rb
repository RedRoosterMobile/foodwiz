class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    #@user.user_level = :admin

    if @user.save
      redirect_to root_url, :notice => 'Signed Up!'
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password,:password_confirmation, :salt, :crypted_password)
  end
end