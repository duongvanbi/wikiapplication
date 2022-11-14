class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :kind
      t.text :author

      t.timestamps
    end
  end
end
