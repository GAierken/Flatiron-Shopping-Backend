class Item < ApplicationRecord
     has_many :jointables
     has_many :orders, through: :jointables
end
