class CreateIncompatibilities < ActiveRecord::Migration[5.1]
  def change
    create_table :incompatibilities do |t|
      t.bigint :part_id
      t.bigint :incompatibility_id
    end
  end
end
