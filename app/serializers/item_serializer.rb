class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :img_url
end
