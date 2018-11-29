class User < ApplicationRecord
  validates :name, presence: true,  length: { minimum: 15, maximum:225}
  validates_format_of :password, :with => /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
has_secure_password
end
