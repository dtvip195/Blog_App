class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :topic

  enum status: {waiting: 0, approve: 1}

  scope :order_new_posts, ->{order created_at: :desc}
  scope :order_views_posts, ->{order views: :desc}
  scope :where_topic_id, ->(id){where topic_id: id}
end
