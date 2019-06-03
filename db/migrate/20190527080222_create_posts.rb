class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :image
      t.integer :status, default: 0, null: false
      t.integer :topic_id
      t.integer :views, default: 0

      t.timestamps
    end
  end
end
