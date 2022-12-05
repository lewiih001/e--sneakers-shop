class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :ordered_items, dependent: :destroy
  has_many :order, through: :ordered_items
end
