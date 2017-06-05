class JwtTokenGeneratorService
  def self.call(user)
    new.call(user)
  end

  def call(user)
    Knock::AuthToken.new(payload: { sub: user.id.to_s })
  end
end
