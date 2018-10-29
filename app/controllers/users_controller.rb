class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    binding.pry
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :phone_number, :zip_code, :password)
  end
end