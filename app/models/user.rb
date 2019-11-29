class User < ApplicationRecord
  before_save { email.downcase! }
  
  validates :name,  presence: true,
                    length: { maximum: 50 }

  validates :email, presence: true,
                    length: { maximum: 255 },
                    uniqueness: true

  validates :password, presence: true,
                       length: { minimum: 6 }

  has_secure_password
end
