class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :outfits, :foreign_key => 'item1_id', class_name: "Outfit"
  has_many :outfits, :foreign_key => 'item2_id', class_name: "Outfit"
  has_many :outfits, :foreign_key => 'item3_id', class_name: "Outfit"
  has_many :outfits, :foreign_key => 'item4_id', class_name: "Outfit"
  has_many :outfits, :foreign_key => 'item5_id', class_name: "Outfit"
end
