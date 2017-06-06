class RigSerializer < ActiveModel::Serializer
  attributes :id, :description, :parts
  has_one :user
  # has_many :parts

  def parts
    object.parts.map {|part| PartSerializer.new(part, {root: false})}
  end
end
