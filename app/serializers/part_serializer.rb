class PartSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :spec, :image
  has_many :parttypes
  has_many :incompatibilities

end
