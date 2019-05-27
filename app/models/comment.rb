class Comment < ApplicationRecord
  has_many :likes, dependent: :destroy
  belongs_to :post
  belongs_to :user
end
