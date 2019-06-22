class DeleteColumnsFromItem < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :item1_id
    remove_column :items, :item2_id
    remove_column :items, :item3_id
    remove_column :items, :item4_id
    remove_column :items, :item5_id
  end
end
