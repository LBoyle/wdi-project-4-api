class AddImageToPart < ActiveRecord::Migration[5.1]
  def change
    add_column :parts, :image, :text
  end
end
