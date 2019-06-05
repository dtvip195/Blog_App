class Hashtag < ApplicationRecord
  has_many :posts_hashtags, dependent: :destroy
  has_many :posts, through: :posts_hashtags
end
