# Sessions controller
class SessionsController < ApplicationController
  include CurrentUserConcern
  def login
    @user = User.find_by(email: params[:email])
    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      token = encode_token({ user_id: @user.id })
      render json: { data: @user, token: token, status: :created, logged_in: true }
    else
      render json: { message: 'User not found! please try again', status: :unauthorized }
    end
  end

  def logout
    reset_session
    render json: { message: 'You logged out', logged_in: false }
  end

  def logged_in
    if check_logged_in
      render json: { data: logged_in_user, logged_in: true }
    else
      render json: { message: 'Please login first', logged_in: false }
    end
  end
end
