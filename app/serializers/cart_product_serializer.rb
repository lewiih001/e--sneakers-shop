class CartProductSerializer < ActiveModel::Serializer
  attributes :id, :item_quantity, :product
  has_one :cart
  has_one :product
end
