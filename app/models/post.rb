class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :topic
  belongs_to :user
  has_many :posts_hashtags, dependent: :destroy
  has_many :hashtags, through: :posts_hashtags

  mount_uploader :image, ImageUploader
  enum status: {waiting: 0, approve: 1}

  scope :order_new_posts, ->{order created_at: :desc}
  scope :order_views_posts, ->{order views: :desc}
  scope :where_topic_id, ->(id){where topic_id: id}
  scope :where_hashtag_id, ->(id){where id: id}
end
