class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :url
      t.string :user_id
      t.integer :category_id
      t.timestamps
    end
  end
end
