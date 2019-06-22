class AddColumnsToOutfitAgain < ActiveRecord::Migration[5.2]
  def change
    add_reference :outfits, :item1, index: true, foreign_key: { to_table: :items }
    add_reference :outfits, :item2, index: true, foreign_key: { to_table: :items }
    add_reference :outfits, :item3, index: true, foreign_key: { to_table: :items }
    add_reference :outfits, :item4, index: true, foreign_key: { to_table: :items }
    add_reference :outfits, :item5, index: true, foreign_key: { to_table: :items }
  end
end
