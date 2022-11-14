class RenameCategoryToCategoryTypeInPosttable < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :category, :category_type
  end
end
