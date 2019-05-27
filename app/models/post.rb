class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :topic

  enum status: {waiting: 0, approve: 1}
end
