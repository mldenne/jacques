class User < ApplicationRecord

  has_many :notes

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true

  validates :auth_token, presence: true, uniqueness: true

  before_validation :generate_auth_token, on: :create

  private

  def generate_auth_token
    while auth_token.blank? || User.exists?(auth_token: auth_token)
      self.auth_token = SecureRandom.hex(10)
    end
  end

end
