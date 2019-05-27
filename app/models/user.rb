class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :recoverable
  devise :database_authenticatable, :registerable,
    :rememberable, :validatable, :omniauthable

  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  enum role: {user: 0, admin: 1}
end
