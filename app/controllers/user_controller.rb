class UserController < ApplicationController
  def index
    @user = User.new
  end

  def create
    p "here to create #{@user}"
    p "here to create #{user_params}"
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: 'User registered!'
    else
      render :new
    end
  end

  private

  def user_params
    
    params.require(:"/user").permit(
      :first_name,
      :last_name,
      :email,
      :password_digest
    )
  end
end
