class Order < ApplicationRecord
  belongs_to :user
  has_many :jointables
  has_many :items, through: :jointables
end
