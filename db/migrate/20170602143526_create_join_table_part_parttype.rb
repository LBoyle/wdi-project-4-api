class CreateJoinTablePartParttype < ActiveRecord::Migration[5.1]
  def change
    create_join_table :parts, :parttypes do |t|
      # t.index [:part_id, :parttype_id]
      # t.index [:parttype_id, :part_id]
    end
  end
end
