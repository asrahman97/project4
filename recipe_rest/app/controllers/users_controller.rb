class UsersController < ApplicationController

  skip_before_action :authorize_request, only: :create

  # POST /signup
  # return authenticated token upon signup

  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.user, user.password).call
    response = { message: Messages.account_created, auth_token: auth_token[0], user: auth_token[1], id: auth_token[2] }
    json_response(response, :created)
  end

  private

  def user_params
    params.permit(
        :user,
        :password,
        :password_confirmation,
        :image_url
    )
  end
end