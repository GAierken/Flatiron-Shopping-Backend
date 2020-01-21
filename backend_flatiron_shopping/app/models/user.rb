class User < ApplicationRecord
      has_many :orders 
      validates :username, presence: true, uniqueness: true
      validates :email, presence: true, uniqueness: true
      validates :password_digest, presence: true
end
