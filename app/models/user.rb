class User < ApplicationRecord
  validates 'username',
    presence: true,
    length: { in: 4..16 }
    uniqueness: { case_sensitive: false }

  valid_email = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+
  validades 'email',
    presence: true,
    length: { maximum: 120 },
    uniqueness: { case_sensitive: false },
    format: { with: valid_email }

  strong_pass = /+
  validates 'password',
    presence: true,
    length: { in: 6..22 },
    format: { with: strong_pass }
end
