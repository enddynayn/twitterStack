class AuthenticationService
  def self.call(data:, user:)
    new.call(data, user)
  end

  def call(data, user)
    password = data.delete(:password)

    return user.authenticate(password) if password
  end
end
