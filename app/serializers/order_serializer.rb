class OrderSerializer < ActiveModel::Serializer
  attributes :id, :total_amount
  # has_one :user
end
