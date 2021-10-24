# Users controller
class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id,
                          token = encode_token({ user_id: @user.id })
      render json: { data: @user, token: token, status: :created }
    else
      render json: { errors: @user.errors.full_messages, status: 500 }
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
