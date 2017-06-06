class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include ActiveModel::SecurePassword

  validates :password, length: { minimum: 6 }
  validates :email, presence: true, length: { maximum: 20 }, uniqueness: true

  field :email, type: String, default: ''
  field :password_digest

  index({ email: 1 }, unique: true)

  has_secure_password
end
