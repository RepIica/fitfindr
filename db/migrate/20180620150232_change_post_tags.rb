class ChangePostTags < ActiveRecord::Migration[5.2]
  def change

    add_column :post_tags, :tag_id, :integer, :references => 'tags'
    add_column :post_tags, :post_id, :integer, :references => 'posts'

  end
end
