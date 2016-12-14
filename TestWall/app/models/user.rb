class User < ApplicationRecord
  has_secure_password
  has_many :messages
  has_many :comments
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  ALPHA_REGEX = /\A[a-zA-Z]+\z/
  validates :first_name, :last_name, :email, :password, presence: true
  validates :email, format: { with: EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :first_name, :last_name, length: { minimum: 2 }, format: { with: ALPHA_REGEX }
  validates :password, length: { minimum: 6 }

  def full_name
    self.first_name + " " + self.last_name
  end
end
