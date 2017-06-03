class PartSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :spec
  has_many :parttypes
  has_many :incompatibilities
  # has_many :part2s
end
