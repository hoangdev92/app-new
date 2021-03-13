class AuthenticationController < ApplicationController
  def authenticate
    auth_token =
      AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
    hash_authen = {
      status: true,
      data: {
          token: auth_token,
          name: "hoanglv"
      }
    }
    json_response(hash_authen)
  end

  private

  def auth_params
    params.permit(:email, :password)
  end
end