class OrderedItemSerializer < ActiveModel::Serializer
  attributes :id, :item_quantity
  # has_one :order
  # has_one :product
end
