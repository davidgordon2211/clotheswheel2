class AddColumnToItemsAgain < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :user, index: true
  end
end
