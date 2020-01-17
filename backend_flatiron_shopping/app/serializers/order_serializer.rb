class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  has_many :items, through: :jointables
end
