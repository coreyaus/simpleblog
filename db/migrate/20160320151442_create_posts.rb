class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content_before_flip
      t.text :content_after_flip
      t.string :share_image_url
      t.boolean :is_published
      t.date :published_date

      t.timestamps null: false
    end
    add_index :posts, :title
  end
end
