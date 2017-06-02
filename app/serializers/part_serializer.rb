class PartSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :spec
  has_many :parttypes
end
