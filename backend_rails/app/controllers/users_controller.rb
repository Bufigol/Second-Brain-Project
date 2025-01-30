class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def search_by_username
    username = params[:username]
    users = User.where('lower(username) = ?', username.downcase)
    if users.present?
      render json: users, status: :ok
    else
      render json: [], status: :not_found
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end