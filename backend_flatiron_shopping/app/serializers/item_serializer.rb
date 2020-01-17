class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description
end
