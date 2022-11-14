class RenameCategoriesIdToCategoryIdInPosttable < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :categories_id, :category_id
  end
end
