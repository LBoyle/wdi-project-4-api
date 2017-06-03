class Part < ApplicationRecord
  has_and_belongs_to_many :parttypes

  # has_and_belongs_to_many :part1s, class_name:'Part', join_table: "part1s_part2s", foreign_key: :part1_id, association_foreign_key: :part1_id
  # has_and_belongs_to_many :part2s, class_name:'Part', join_table: "part1s_part2s", foreign_key: :part2_id, association_foreign_key: :part2_id
  has_and_belongs_to_many :incompatibilities, class_name: "Part", join_table: "incompatibilities", association_foreign_key: "incompatibility_id"
end

# Class Node < ActiveRecord::Base
#   has_and_belongs_to_many :parents, :class_name=>'Node', :join_table => "parents_children", :foreign_key => :child_id, :association_foreign_key => :parent_id
#   has_and_belongs_to_many :children, :class_name=>'Node', :join_table => "parents_children", :foreign_key => :parent_id, :association_foreign_key => :child_id
# end
