class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :genre
      t.datetime :publish_date
      t.string :image
      t.string :author
      t.integer :views
      t.integer :likes
      t.integer :comments

      t.timestamps
    end
  end
end
