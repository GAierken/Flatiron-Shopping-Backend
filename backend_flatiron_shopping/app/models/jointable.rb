class Jointable < ApplicationRecord
  belongs_to :order, dependent: :destroy
  belongs_to :item, dependent: :destroy
end
