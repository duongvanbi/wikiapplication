class RenameCategoryToCategoriesIdInPosttable < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :category_id, :categories_id
  end
end
