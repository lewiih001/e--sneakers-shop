class User < ApplicationRecord
  rolify
  has_many :products, dependent: :destroy
  has_many :orders 
  has_many :ordered_items, through: :products
end
