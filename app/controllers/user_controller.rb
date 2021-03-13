class UsersController < ApplicationController
  require 'bcrypt'

  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, BCrypt::Password.new(user.password_digest)).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password_digest])
  end

  private

  def user_params
    params.permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end
end