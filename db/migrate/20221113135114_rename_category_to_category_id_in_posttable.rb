class RenameCategoryToCategoryIdInPosttable < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :category_type, :category_id
  end
end
