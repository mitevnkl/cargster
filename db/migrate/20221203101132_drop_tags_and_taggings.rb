class DropTagsAndTaggings < ActiveRecord::Migration[7.0]
  def change
    drop_table :taggings
    drop_table :tags
  end
end