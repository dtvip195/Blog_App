class CreatePostsHashtags < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_hashtags do |t|
      t.integer :hashtag_id
      t.integer :post_id

      t.timestamps
    end
  end
end
