class CreateHashtags < ActiveRecord::Migration[5.2]
  def change
    create_table :hashtags do |t|
      t.string :hashtag
      t.integer :clicks

      t.timestamps
    end
  end
end
