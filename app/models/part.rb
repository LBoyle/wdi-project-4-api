class Part < ApplicationRecord
  has_and_belongs_to_many :parttypes

  has_and_belongs_to_many :incompatibilities, class_name: "Part", join_table: "incompatibilities", association_foreign_key: "incompatibility_id"
end
