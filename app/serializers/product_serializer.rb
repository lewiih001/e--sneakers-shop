class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image_url, :released_year
  # has_one :user
  # has_one :category
end
