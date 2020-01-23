class User < ApplicationRecord
    has_many :orders, dependent: :destroy
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: true
    has_secure_password
    
end
