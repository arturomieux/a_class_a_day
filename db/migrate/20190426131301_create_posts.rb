class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :short_description
      t.text :content
      t.datetime :published_at

      t.timestamps
    end

    add_index :posts, :created_at
    add_index :posts, :published_at
  end
end
