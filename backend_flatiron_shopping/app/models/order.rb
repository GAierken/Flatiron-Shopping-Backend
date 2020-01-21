class Order < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :jointables
  has_many :items, through: :jointables
end
