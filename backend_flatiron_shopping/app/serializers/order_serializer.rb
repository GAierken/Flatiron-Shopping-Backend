class OrderSerializer < ActiveModel::Serializer
  attributes :id
  has_many :items, through: :jointables
 
end
