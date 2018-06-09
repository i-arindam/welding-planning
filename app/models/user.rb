class User < ApplicationRecord
  has_secure_password
  validates :password, length: { minimum: 5 }

  belongs_to :wedding
end
