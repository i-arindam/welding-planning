class User < ApplicationRecord
  has_secure_password
  validates :password, length: { minimum: 5 }
  validates_confirmation_of :password

  belongs_to :wedding, optional: true

  has_many :relationships, foreign_key: :relative_of_id
end
