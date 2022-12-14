class Order < ApplicationRecord
  belongs_to :user
  has_many :ordered_items
  has_many :products, through: :ordered_items
end
