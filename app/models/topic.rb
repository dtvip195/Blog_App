class Topic < ApplicationRecord
  has_many :posts, dependent: :destroy
  belongs_to :category
end
