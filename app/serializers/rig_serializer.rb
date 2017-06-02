class RigSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_one :user
  has_many :parts
end
