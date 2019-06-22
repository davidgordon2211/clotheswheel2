class Outfit < ApplicationRecord
  belongs_to :item1, :foreign_key => 'item1_id', class_name: "Item"
  belongs_to :item2, :foreign_key => 'item2_id', class_name: "Item"
  belongs_to :item3, :foreign_key => 'item3_id', class_name: "Item"
  belongs_to :item4, :foreign_key => 'item4_id', class_name: "Item"
  belongs_to :item5, :foreign_key => 'item5_id', class_name: "Item"
end
