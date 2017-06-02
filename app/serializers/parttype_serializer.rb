class ParttypeSerializer < ActiveModel::Serializer
  attributes :id, :parttype, :description
  has_many :parts
end
