class ChangeColumnNameInItem < ActiveRecord::Migration[5.2]
  def change
    rename_column :items, :type, :clothes_type
  end
end
