class AddColumnToItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :user_id, index: true, foreign_key: { to_table: :users }
  end
end
