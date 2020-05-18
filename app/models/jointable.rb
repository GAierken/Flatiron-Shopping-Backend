class Jointable < ApplicationRecord
  belongs_to :item, dependent: :destroy
  belongs_to :order, dependent: :destroy
end
