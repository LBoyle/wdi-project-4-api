class CreateJoinTableRigPart < ActiveRecord::Migration[5.1]
  def change
    create_join_table :rigs, :parts do |t|
      # t.index [:rig_id, :part_id]
      # t.index [:part_id, :rig_id]
    end
  end
end
