class AuthenticationController < ApplicationController
  # return auth token once user is authenticated

  skip_before_action :authorize_request, only: :authenticate


  def authenticate
    auth_token =
        AuthenticateUser.new(auth_params[:user], auth_params[:password]).call
    json_response(auth_token: auth_token[0], user: auth_token[1], id: auth_token[2])
  end

  private

  def auth_params
    params.permit(:user, :password)
  end
end