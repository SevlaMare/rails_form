class User < ApplicationRecord
  validates :username,
            presence: true,
            length: { in: 4..16 },
            uniqueness: true

  valid_email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+/
  validates :email,
            presence: true,
            length: { maximum: 120 },
            uniqueness: { case_sensitive: false },
            format: { with: valid_email }

  validates :password,
            presence: true,
            length: { in: 6..22 }
end
