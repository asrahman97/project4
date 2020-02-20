class AuthenticateUser
  def initialize(user, password)
    puts user
    puts password

    @user = user
    puts user
    @password = password
  end

  # Service entry point
  def call
    # [JsonWebToken.encode(user_id: user.id), user.user, user.id] if user
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_reader :user, :password

  # verify user credentials
  def user
    user = User.find_by(user: @user)
    puts user
    return user if user && user.authenticate(password)
    # raise Authentication error if credentials are invalid
    raise(ExceptionHandler::AuthenticationError, Messages.invalid_credentials)
  end
end
