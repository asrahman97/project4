class AuthenticateUser
  def initialize(user, password)
    @user = user
    @password = password
  end

  # Service entry point
  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_reader :user, :password

  # verify user credentials
  def user
    user = User.find_by(user: @user)
    return user if user && user.authenticate(password)
    # raise Authentication error if credentials are invalid
    raise(ExceptionHandler::AuthenticationError, Messages.invalid_credentials)
  end
end