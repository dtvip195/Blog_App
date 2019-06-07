class Topic < ApplicationRecord
  has_many :posts, dependent: :destroy
  belongs_to :category

  validates :name, presence: true, uniqueness: true
end
