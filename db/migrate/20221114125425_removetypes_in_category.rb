class RemovetypesInCategory < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :types
  end
end
