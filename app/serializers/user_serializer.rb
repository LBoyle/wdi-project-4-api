class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :image
  has_many :rigs
end
